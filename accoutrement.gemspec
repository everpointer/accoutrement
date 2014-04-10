# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  # General Project Information
  s.name = "accoutrement"
  s.version = File.read(File.join(File.dirname(__FILE__), "VERSION"))
  s.licenses = ['MIT/GLPv2']
  s.date = "2013-09-04"

  # RubyForge Information
  s.rubyforge_project = "accoutrement"
  s.rubygems_version = "2.0.3"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=

  # Author Information
  s.authors = ["Eric M. Suzanne"]
  s.email = ["eric@oddbird.net"]
  s.homepage = "http://github.com/ericam/accoutrement/"

  # Project Description
  s.summary = "Sass utilities and patterns."
  s.description = "A library of Sass utilities and patterns for OddBird projects."

  # Files to Include
  s.require_paths = ["lib"]

  s.files = Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += ["README.md", "VERSION"]

  # Docs Information
  s.extra_rdoc_files = ["README.md", "lib/accoutrement.rb"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "accoutrement", "--main", "README.md"]

  dependencies = {
    "sass"    => "~> 3.3",
    "compass" => "~> 1.0.0.alpha.17"
  }
  # Project Dependencies
  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      dependencies.each do |project, version|
        s.add_runtime_dependency(project, version)
      end
    else
      dependencies.each do |project, version|
        s.add_dependency(project, version)
      end
    end
  else
    dependencies.each do |project, version|
      s.add_dependency(project, version)
    end
  end
end
