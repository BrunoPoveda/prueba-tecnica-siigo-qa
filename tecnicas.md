# Diseño de Pruebas

# **Funcionalidad:** Creación de Clientes en Siigo

En este documento detallo la aplicación de las técnicas sugeridas en la prueba la cual consta de:
Partición de Equivalencias
Valores Límite
Tablas de Decisión y Transición de Estados a la funcionalidad de creación de clientes en Siigo.

Cabe aclarar que es desde la perpestiva e interaccion de lo que revise en el; formulario, ya que no tengo criterios de aceptacion o algun documento formalizado


## 1. Partición de Equivalencias

los divide en cada uno de los campos colocando ejemplos de lo que podria suceder en un escenario real

* **Tipo de Persona:**
    * *Válida:* Persona Natural, Persona Jurídica
* **Nombre:**
    * *Válida:* Texto alfanumérico dentro de los límites aceptados (ej: "Cliente Prueba").
    * *Inválida:* Campo vacío.
    * *Inválida:* Texto con caracteres especiales no permitidos (ej: "!@#").
    * *Inválida:* Texto excediendo la longitud máxima (asumiendo una longitud máxima).
* **Número de Identificación:**
    * *Válida (Persona Natural):* Número con formato esperado (ej: "1234567890").
    * *Válida (Persona Jurídica):* Número con formato esperado (ej: "900123456-7").
    * *Inválida:* Campo vacío.
    * *Inválida:* Formato incorrecto (ej: "ABC").
    * *Inválida:* Longitud incorrecta.
* **DV (Dígito de Verificación):**
    * *Válida:* Dígito correcto (ej: "5").
    * *Inválida:* Dígito incorrecto (ej: "0").
    * *Borde:* Campo vacío (si no es obligatorio para Persona Natural).
* **Email:**
    * *Válida:* Formato estándar ([dirección de correo electrónico eliminada]).
    * *Inválida:* Formato incorrecto (ej: "prueba@", "@dominio.com").
    * *Inválida:* Campo vacío (si es obligatorio).
* **Teléfono/Celular:**
    * *Válida:* Número con formato esperado (ej: "3101234567").
    * *Inválida:* Formato incorrecto (ej: "ABC").
    * *Inválida:* Longitud incorrecta.
* **Dirección:**
    * *Válida:* Texto alfanumérico dentro de los límites aceptados (ej: "Calle 1 # 2-3").
    * *Inválida:* Campo vacío (si es obligatorio).
    * *Inválida:* Texto excediendo la longitud máxima.
* **Ciudad:**
    * *Válida:* Cualquier opción de la lista desplegable (ej: "Bogotá").

## 2. Valores Límite

Se centran en probar los valores en los bordes de las particiones de equivalencia.
Estos casos pueden aplicarse siempre y cuando se conocen por ejemplo los limited en cuanto a longitudes de dichos campos

* **Nombre/Dirección:**
    * Longitud mínima (ej: 1 carácter, si aplica).
    * Un carácter menos que la longitud máxima
    * Longitud máxima 
    * Un carácter más que la longitud máxima
* **Número de Identificación/Teléfono/Celular:**
    * Longitud mínima (ej: 1 dígito, si aplica).
    * Un dígito menos que la longitud máxima 
    * Longitud máxima 
    * Un dígito más que la longitud máxima 
* **DV:**
    * "0"
    * "9" (si es un solo dígito)

## 3. Tablas de Decisión

En la tabla de desicion  coloco algunos ejemplos con campos obligatorios y no obligatorios.

| Campo Obligatorio (Nombre, Número ID) | Formato Email Válido | Tipo de Persona = Persona Natural y DV Obligatorio | Resultado Esperado                                  |
| :---------------------------------- | :------------------ | :------------------------------------------------- | :-------------------------------------------------- |
| Sí                                  | Sí                 | No                                                 | Cliente creado exitosamente                         |
| No                                  | Sí                 | No                                                 | Error: Campos obligatorios faltantes                   |
| Sí                                  | No                 | No                                                 | Error: Formato de email inválido                    |
| Sí                                  | Sí                 | Sí                                                 | Error: Campo DV es obligatorio para Persona Natural |

## 4. Transición de Estados

En esta soy general en el estado del; formulario la cual consta de 6 estados

1.  **Estado Inicial:** Formulario de creación de clientes vacío.
2.  **Ingreso de Datos Válidos:** El usuario llena todos los campos obligatorios con datos válidos.
3.  **Ingreso de Datos Inválidos:** El usuario llena algunos campos con datos inválidos (ej: email incorrecto, campos obligatorios vacíos).
4.  **Intento de Guardar:** El usuario hace clic en el botón "Guardar".
5.  **Estado de Error:** Si hay datos inválidos, se muestran mensajes de error indicando los campos problemáticos. El formulario permanece en un estado donde se pueden corregir los errores.
6.  **Estado de Éxito:** Si todos los datos son válidos, el cliente se crea y se muestra un mensaje de éxito o se redirige a la lista de clientes.