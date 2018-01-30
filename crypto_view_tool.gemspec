
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "crypto_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "crypto_view_tool"
  spec.version       = CryptoViewTool::VERSION
  spec.authors       = ["Mario Florence"]
  spec.email         = ["mflorence1989@gmail.com"]

  spec.summary       = %q{This is a copyright tool for the KryptoNet website.}
  spec.description   = %q{Copyright tool.}
  spec.homepage      = "https://kryponet.com"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
