Feature: Buscar productos en Mercado Libre desde móvil

  Scenario: Buscar y obtener productos playstation 5
    Given que estoy en el sitio de Mercado Libre
    When selecciono México como país
    And cierro el popup de la app si aparece
    And busco el término "playstation 5"
    When toco el botón Filtrar
    And toco el botón Condición
    And selecciono la opción Nuevo
    When toco el botón Filtrar
    And toco el botón Ubicación
    And selecciono la ubicación Distrito Federal
    And toco el botón Ordenar
    And selecciono la opción Mayor precio
    Then muestro los primeros 5 productos en consola


    #Then muestro los primeros 5 productos en consola
