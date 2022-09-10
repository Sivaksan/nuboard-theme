# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "nuboard-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["rajan"]
  spec.email         = ["rajanyadav@vivaldi.net"]

  spec.summary       = "Nuboard is a free and open-source Jekyll theme with separate pages for showcasing your case studies, portfolio, and podcast."
  spec.homepage      = "https://rajanyadav.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
