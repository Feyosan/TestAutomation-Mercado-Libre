Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end


def take_screenshot(name)
  path = "screenshots/#{name.gsub(' ', '_')}_#{Time.now.to_i}.png"
  $driver.screenshot(path)
end
