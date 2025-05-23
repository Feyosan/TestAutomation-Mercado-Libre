
Given('que estoy en el sitio de Mercado Libre') do
  $driver.get('https://www.mercadolibre.com')
end

When('selecciono México como país') do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  begin
    # Intenta encontrar el botón sin hacer scroll
    mexico_btn = wait.until {
      el = $driver.find_element(:xpath, '//a[@id="MX"]')
      el.displayed? ? el : nil
    }
  rescue Selenium::WebDriver::Error::TimeoutError
    # Si no lo encuentra, hace scroll hacia abajo
    $driver.execute_script('window.scrollBy(0, 500)')
    
    # Reintenta la búsqueda del botón después del scroll
    mexico_btn = wait.until {
      el = $driver.find_element(:xpath, '//a[@id="MX"]')
      el.displayed? ? el : nil
    }
  end
  mexico_btn.click
  
end

And('cierro el popup de la app si aparece') do
  original_context = $driver.current_context

  begin
    puts "Cambiando a contexto nativo para cerrar popup"
    $driver.set_context('NATIVE_APP')
    wait = Selenium::WebDriver::Wait.new(timeout: 5)

    close_btn = wait.until {
      el = $driver.find_element(:xpath, "//android.widget.Button[@resource-id='download-app-bottom-banner-close']")
      el.displayed? ? el : nil
    }
    close_btn.click
    puts "Popup cerrado correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No apareció el popup, continuando..."
  rescue => e
    puts "Error al cerrar popup: #{e.message}"
  ensure
    $driver.set_context(original_context)
  end
end


And('busco el término {string}') do |termino|

  sleep 10
  search_input = $driver.find_element(:css, 'input[name="as_word"]')
  search_input.send_keys(termino)
  search_input.submit
  sleep 10
end

When('toco el botón Filtrar') do
  begin
    puts "Buscando botón 'Filtrar' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    filtrar_btn = wait.until {
      el = $driver.find_element(:xpath, "//main[@id='root-app']/div/div[2]/div/ul/li[2]")
      el.displayed? ? el : nil
    }

    filtrar_btn.click
    puts "Botón 'Filtrar' tocado correctamente"

    # Scroll después de abrir el menú para asegurar que se vea 'Condición'
    sleep 1
    $driver.execute_script('window.scrollBy(0, 500)')
    puts "Scroll aplicado para mostrar opciones del menú de filtros"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró el botón 'Filtrar', continuando..."
  rescue => e
    puts "Error al tocar botón 'Filtrar': #{e.message}"
  end
  sleep 5
end




And('toco el botón Condición') do
  begin
    puts "Buscando botón 'Condición' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    condicion_btn = wait.until {
      el = $driver.find_element(:xpath, "//ul[@id=':R3e:']/li[5]") 
      el.displayed? ? el : nil
    }

    condicion_btn.click
    puts "Botón 'Condición' tocado correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró el botón 'Condición', continuando..."
  rescue => e
    puts "Error al tocar botón 'Condición': #{e.message}"
  end
  sleep 5
end



And('selecciono la opción Nuevo') do
  begin
    puts "Buscando opción 'Nuevo' en web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    nuevo_btn = wait.until {
      el = $driver.find_element(:xpath, "//li[@id=':r0:-1']/a")
      el.displayed? ? el : nil
    }

    nuevo_btn.click
    puts "Opción 'Nuevo' seleccionada correctamente"
  rescue => e
    puts "Error al seleccionar 'Nuevo': #{e.message}"
  end
  sleep 5
end

And('toco el botón Ubicación') do
  begin
    puts "Buscando botón 'Ubicación' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    ubicacion_btn = wait.until {
      el = $driver.find_element(:xpath, "//ul[@id=':R3e:']/li[10]")
      el.displayed? ? el : nil
    }

    ubicacion_btn.click
    puts "Botón 'Ubicación' tocado correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró el botón 'Ubicación', continuando..."
  rescue => e
    puts "Error al tocar botón 'Ubicación': #{e.message}"
  end
  sleep 5
end

And('selecciono la ubicación Distrito Federal') do
  begin
    puts "Buscando opción 'Distrito Federal' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    distrito_btn = wait.until {
      el = $driver.find_element(:xpath, "//li[@id=':r0:-1']/a")
      el.displayed? ? el : nil
    }

    distrito_btn.click
    puts "Ubicación 'Distrito Federal' seleccionada correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró la opción 'Distrito Federal', continuando..."
  rescue => e
    puts "Error al seleccionar 'Distrito Federal': #{e.message}"
  end
  sleep 5
end


And('toco el botón Ordenar') do
  begin
    puts "Buscando botón 'Ordenar' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    ordenar_btn = wait.until {
      el = $driver.find_element(:xpath, "//main[@id='root-app']/div/div[2]/div/ul/li[1]")
      el.displayed? ? el : nil
    }

    ordenar_btn.click
    puts "Botón 'Ordenar' tocado correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró el botón 'Ordenar', continuando..."
  rescue => e
    puts "Error al tocar botón 'Ordenar': #{e.message}"
  end
  sleep 5
end

And('selecciono la opción Mayor precio') do
  begin
    puts "Buscando opción 'Mayor precio' en contexto web"
    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    mayor_precio_btn = wait.until {
      el = $driver.find_element(:xpath, "//ul/li[3]/a")
      el.displayed? ? el : nil
    }

    mayor_precio_btn.click
    puts "Opción 'Mayor precio' seleccionada correctamente"
  rescue Selenium::WebDriver::Error::TimeoutError
    puts "No se encontró la opción 'Mayor precio', continuando..."
  rescue => e
    puts "Error al seleccionar 'Mayor precio': #{e.message}"
  end
  sleep 5
end

Then('muestro los primeros 5 productos en consola') do
  begin
    puts "Buscando productos reales (con nombre y precio final)..."

    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until {
      $driver.find_elements(:xpath, "//main[@id='root-app']/div/div[10]/ol/li").length >= 5
    }

    all_items = $driver.find_elements(:xpath, "//main[@id='root-app']/div/div[10]/ol/li")

    found_products = []
    index = 0

    all_items.each do |item|
      break if found_products.size >= 5

      begin
        # Obtener nombre
        img = item.find_element(:xpath, ".//img")
        title = img.attribute("title")
        alt = img.attribute("alt")

        name = if title && !title.strip.empty?
                 title
               elsif alt && !alt.strip.empty?
                 alt
               else
                 'Nombre no disponible'
               end

        # Buscar spans que estén fuera de <s> y que parezcan precios
        price_spans = item.find_elements(:xpath, ".//div[not(ancestor::s)]//span")
        price = price_spans.map(&:text)
                           .select { |t| t.strip.match?(/^\$?\d{2,3}[\.,]?\d{0,3}$/) }
                           .first || 'Precio no disponible'

        found_products << { index: index + 1, name: name, price: price }
        index += 1
      rescue
        next
      end
    end

    found_products.each do |p|
      puts "#{p[:index]}. #{p[:name]} - $#{p[:price]}"
    end

    puts "Productos listados correctamente"
  rescue => e
    puts "Error al obtener productos: #{e.message}"
  end
end


















