require 'appium_lib'

def caps
  {
    caps: {
      platformName: 'Android',
      deviceName: 'DXU7N18623000550',
      automationName: 'UiAutomator2',
      browserName: 'Chrome',
      #chromedriverExecutableDir: '/ruta/a/chromedriver'
    },
    appium_lib: {
      server_url: 'http://localhost:4723'
    }
  }
end
