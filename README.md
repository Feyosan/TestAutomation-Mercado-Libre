# Automatización Web Móvil - Mercado Libre

Este proyecto automatiza una prueba funcional en el sitio web de [Mercado Libre](https://www.mercadolibre.com), ejecutándose en un navegador Chrome móvil real mediante Appium y Ruby con Cucumber.

---

## ✅ Requisitos

- Ruby 3.x
- Bundler (`gem install bundler`)
- Appium Server v2 (`npm install -g appium`)
- ChromeDriver (se puede usar `--allow-insecure chromedriver_autodownload`)
- Dispositivo Android conectado vía USB con modo desarrollador y depuración activados

---

## 🔧 Instalación

1. Clona este repositorio:

```bash
git clone https://github.com/Feyosan/mercadoLibre-automation.git
cd mercadoLibre-automation
```

2. Instala las dependencias del proyecto:

```bash
bundle install
```

---

## 🚀 Ejecución de la prueba

1. Inicia Appium con descarga automática del ChromeDriver:

appium --allow-insecure chromedriver_autodownload

2. En otra terminal ya sea la del propio VScode o CMD, ejecuta la prueba:

bundle exec cucumber features/search_playstation.feature


---

## 🔍 Qué valida la prueba

1. Abre el sitio de Mercado Libre
2. Selecciona México como país
3. Busca "playstation 5"
4. Aplica filtros:
   - Condición: Nuevos
   - Ubicación: CDMX
   - Orden: Mayor precio
5. Extrae el nombre y precio final de los primeros 5 productos y los imprime en consola

---

## 🧪 Herramientas usadas

- Appium
- Ruby
- Cucumber
- Selenium WebDriver
- Chrome para Android

---

## 📁 Estructura del proyecto

features/
├── search_playstation.feature
├── step_definitions/
│   └── search_playstation.rb
├── support/
│   ├── env.rb
│   └── hooks.rb
drivers/
└── capabilities.rb
Gemfile
README.md
```

---


## STEPS IMAGES





## 👤 Autor

José Alfredo Albarrán Sánchez — [@TuGitHub](https://github.com/TuGitHub)
