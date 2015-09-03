class ApiGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :name, :type => :string
  argument :field, :type => :hash
   def generate_layout
    template "api.rb", "app/controllers/#{name}_controller.rb"
    template "migration.rb", "db/migrate/_create_#{name}s.rb"
    template "model.rb", "app/model/#{name}.rb"
  end
  
  private
  
  def controller_name
  	name.capitalize
  end
end