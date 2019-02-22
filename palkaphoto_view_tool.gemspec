
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "palkaphoto_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "palkaphoto_view_tool"
  spec.version       = PalkaphotoViewTool::VERSION
  spec.authors       = ["Chris Palka"]
  spec.email         = ["chris@palkaphoto.com"]

  spec.summary       = %q{This gem generates copyright information.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://palkaphoto.com"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  gem.files = `git ls-files`.split($/).reject { |fn| fn.start_with? "spec" }
    ...
end
