namespace :radiant do
  namespace :extensions do
    namespace :sass_grid do
      
      desc "Runs the migration of the Sass Grid extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          SassGridExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          SassGridExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Sass Grid to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from SassGridExtension"
        Dir[SassGridExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(SassGridExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
