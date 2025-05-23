require 'appium_lib'
require_relative '../../drivers/capabilities'

# Inicializa el driver solo una vez
$driver = Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object



