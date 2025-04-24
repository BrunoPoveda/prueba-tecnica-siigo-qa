# Reporte de Bug

**Título del Bug:** Permite crear un cliente sin seleccionar un "Tipo de Identificación".

**Descripción:** El campo "Tipo de Identificación" en el formulario de creación de clientes está marcado visualmente como obligatorio. Sin embargo, realizando la prueba me permite guardar la información del cliente sin que el usuario seleccione una opción de la lista desplegable.

**Pasos para Reproducir el Bug:**

1.  ingresar a la página de creación de clientes desde el navegador Web ya sea Chrome, Firefox ...etc.
2.  Llenar los campos obligatorios "Nombre" y "Número de Identificación" con datos válidos.
3.  Omitir la selección de una opción en el campo desplegable "Tipo de Identificación".
4.  Hacer clic en el botón "Guardar" para crear el cliente.
5.  Verificar si el sistema permite la creación del cliente sin haber seleccionado un "Tipo de Identificación".

**Resultado Esperado:** El sistema debería impedir la creación del cliente y mostrar un mensaje de error indicando que el campo "Tipo de Identificación" es obligatorio y debe ser seleccionado antes de guardar.

**Resultado Real:** El sistema permite la creación del cliente sin que se haya seleccionado un valor en el campo "Tipo de Identificación". El registro del cliente se guarda con este campo vacío o con su valor por defecto sin validación.

**Severidad:** Alto - Este campo es obligatorio clave como el "Tipo de Identificación" puede llevar a inconsistencias en los datos.

**Prioridad:** Alta - Este bug debe corregirse de inmediato para asegurar la integridad de los datos.

**Entorno de pruebas:** Navegador web (probado en Chrome,firefox y edge), Sistema Operativo (Windows 11).

**Evidencia:** (Suponiendo que si existiera aqui se montarian als evidencias del Bug)
