Feature: Validacion Unitarias en la Creación de Clientes Siigo

  Escenario: Verificar campo Nombre es obligatorio
    Dado que el usuario está en el formulario de creación de clientes
    Cuando intenta guardar el cliente sin ingresar el Nombre
    Entonces se debe mostrar un mensaje de error indicando que el Nombre es obligatorio

  Escenario: Validar formato de email incorrecto
    Dado que el usuario está en el formulario de creación de clientes
    Cuando ingresa el email "pruebasqa@test"
    Entonces se debe mostrar un mensaje de error indicando formato de email inválido

