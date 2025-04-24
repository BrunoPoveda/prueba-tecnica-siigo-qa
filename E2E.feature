Feature: Creación de Cliente End-to-End

  Escenario: Crear un nuevo cliente Persona Natural exitosamente
    Dado que el usuario accede a la página de creación de clientes
    Cuando ingresa el "Tipo de Persona" como "Persona Natural"
    Y completa los campos obligatorios con datos válidos:
      | Nombre              | Número de Identificación | Tipo de Identificación | Email                     |
      | Prueba Bruno	    | 123890             | Cédula de Ciudadanía   | test1@ejemplo.com       |
    Y hace clic en el botón "Guardar"
    Entonces se debe mostrar un mensaje de éxito indicando que el cliente ha sido creado
    Y el cliente "Cliente Prueba Uno" debe aparecer en la lista de clientes

  Escenario: Intentar crear un cliente Persona Empresa con Nombre faltante
    Dado que el usuario accede a la página de creación de clientes
    Cuando ingresa el "Tipo de Persona" como "Empresa"
    Y deja el campo "Nombre" vacío
    Y completa el campo "Número de Identificación" con un NIT válido "900111222-3"
    Y hace clic en el botón "Guardar"
    Entonces se debe mostrar un mensaje de error indicando que el campo "Nombre" es obligatorio