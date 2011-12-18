require 'fileutils'

namespace :dotvim do

  desc 'Install .vim'
  task :install => [:update, :symlink]

  desc 'Update .vim and get latest pristine bundles'
  task :update  => ['update:repo', 'update:bundles:pristine', 'update:bundles:build']

  task :symlink do
    symlink_config('vimrc')
    symlink_config('gvimrc')
  end

  namespace :update do
    task :repo do
      git_command('pull --rebase')
    end

    namespace :bundles do
      task :pristine do
        git_command('submodule update --init --recursive')
      end

      task :latest do
        Dir['./bundle/*'].each do |bundle|
          next unless File.directory?(bundle)

          FileUtils.cd(bundle) do
            git_command('checkout master')
            git_command('pull')
            git_command('submodule update --init --recursive')
          end
        end
      end

      task :build do
        command_t_ruby = File.expand_path('./bundle/Command-T/ruby/command-t')

        FileUtils.cd(command_t_ruby) do
          `ruby extconf.rb`
          `make`
        end
      end
    end
  end

end

def git_command(cmd)
  `git #{cmd} 2>&1`
end

def symlink_config(config)
  source  = File.expand_path("#{config}.vim")
  target  = File.expand_path("~/.#{config}")

  return if File.realpath(target) == source

  FileUtils.ln_sf(source, target)
end
