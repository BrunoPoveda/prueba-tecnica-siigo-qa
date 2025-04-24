Feature: Integración de Campos en la Creación de Clientes

  Escenario: Seleccionar tipo de Persona Natural no requiere DV obligatorio
    Dado que el usuario está en el formulario de creación de clientes
    Cuando selecciona "Es Persona" en el Tipo de Persona
    Entonces el campo "DV" no debe mostrarse como obligatorio (*)

  Escenario: Ingresar Número de Identificación con formato incorrecto muestra error
    Dado que el usuario está en el formulario de creación de clientes
    Cuando ingresa un "Número de Identificación" con formato "#@@@!"
    Entonces se debe mostrar un mensaje de error indicando formato inválido