# Reporte de Bug

**Título del Bug:** Se permite crear un cliente sin seleccionar un "Tipo de Identificación" obligatorio.

**Descripción:** El campo "Tipo de Identificación" en el formulario de creación de clientes está marcado visualmente como obligatorio (puede tener un asterisco \* o una indicación similar). Sin embargo, el sistema permite guardar la información del cliente sin que el usuario seleccione una opción de la lista desplegable para este campo. Esto resulta en la creación de un registro de cliente incompleto y potencialmente inconsistente en la base de datos.

**Pasos para Reproducir:**

1.  Acceder a la página de creación de clientes.
2.  Llenar los campos obligatorios "Nombre" y "Número de Identificación" con datos válidos.
3.  Omitir la selección de una opción en el campo desplegable "Tipo de Identificación". Dejarlo en la opción por defecto (si existe una) o sin ninguna selección activa.
4.  Hacer clic en el botón "Guardar" para crear el cliente.
5.  Verificar si el sistema permite la creación del cliente sin haber seleccionado un "Tipo de Identificación".

**Resultado Esperado:** El sistema debería impedir la creación del cliente y mostrar un mensaje de error indicando que el campo "Tipo de Identificación" es obligatorio y debe ser seleccionado antes de guardar.

**Resultado Real:** El sistema permite la creación del cliente sin que se haya seleccionado un valor en el campo "Tipo de Identificación". El registro del cliente se guarda con este campo vacío o con su valor por defecto sin validación.

**Severidad:** Alto - La omisión de un campo obligatorio clave como el "Tipo de Identificación" puede llevar a inconsistencias en los datos y afectar la funcionalidad del sistema que depende de esta información.

**Prioridad:** Alta - Este bug debe corregirse de inmediato para asegurar la integridad de los datos y el correcto funcionamiento de la aplicación.

**Entorno:** Navegador web (probado en Chrome), Sistema Operativo (Windows 10).

**Evidencia:** (Se adjuntaría una captura de pantalla aquí mostrando el formulario con los campos Nombre y Número de Identificación llenos, el campo "Tipo de Identificación" sin seleccionar, y la confirmación de que el cliente se creó exitosamente a pesar de esto).