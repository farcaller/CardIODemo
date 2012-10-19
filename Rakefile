# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  app.name = 'CardIO'

  app.frameworks += ['AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security']

  app.vendor_project('vendor/CardIO', :static)

  app.provisioning_profile = #
  app.codesign_certificate = #
  app.identifier = #
  app.seed_id = #

  app.entitlements = { 'get-task-allow' => true }
end
