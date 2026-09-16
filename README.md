# LAB: tabla puente y consultas multitabla

## Objetivo

Es posible, y muchas veces necesario, crear una tabla puente que permita registrar relaciones entre dos o más tablas. Un ejemplo clásico es la relación entre un cliente y los productos que compra.

Si un cliente compra varias veces, no queremos mezclar los productos antiguos con los nuevos, ni perder el historial de compras. Por eso se crea una tabla intermedia, como por ejemplo `pedidos`, que registra cada compra y conecta clientes con productos.

En este ejercicio trabajaremos con una base de datos de podcasts:

- Un usuario puede descargar muchos podcasts.
- Un podcast puede ser descargado por muchos usuarios.
- La relación muchos a muchos se resuelve con una tabla intermedia: `descargas`.

## Enunciado

### 1. Crear la base de datos y las tablas

Desde cero, genera una base de datos llamada `podcast` y crea tres tablas:

- `usuario`
- `podcast`
- `descargas`

Puedes hacerlo desde el modelo EER de Workbench o desde la vista SQL habitual.

### 2. Definir las relaciones

La tabla `descargas` debe guardar la relación entre usuarios y podcasts, y además registrar la fecha y hora de la descarga.

- `usuario` tendrá un identificador único.
- `podcast` tendrá un identificador único.
- `descargas` tendrá:
  - `idusuario` como clave foránea a `usuario`
  - `idpodcast` como clave foránea a `podcast`
  - `fecha_descarga` con valor por defecto `CURRENT_TIMESTAMP`

### 3. Insertar datos

Añade registros en las tres tablas.

### 4. Analizar los problemas y la lógica de la relación

Tras insertar los datos, responde a estas preguntas:

- ¿Qué problema aparece si intentamos guardar la relación directamente en una sola tabla?
- ¿Por qué necesitamos una tabla puente?
- ¿Qué ventajas tiene esta estructura para conservar el historial de descargas?

### 5. Consultas multitabla

Realiza consultas para obtener información combinando las tablas.

Ejemplos:

- ¿Qué podcast ha descargado un usuario concreto?
- ¿Qué usuarios han descargado un podcast determinado?
- ¿Cuáles son los podcasts más descargados?
- ¿Cuántos minutos de contenido ha descargado cada usuario?

Ejemplo de consulta posible:

```sql
SELECT
    u.nombre AS usuario,
    p.titulo AS podcast,
    d.fecha_descarga
FROM descargas d
JOIN usuario u ON d.idusuario = u.idusuario
JOIN podcast p ON d.idpodcast = p.idpodcast
WHERE u.nombre = 'Laura Gómez';
```

## Importante

Este ejercicio es ideal para trabajar con la relación de muchos a muchos y practicar consultas `JOIN` entre tablas.

Se recomienda probar distintas consultas, hacer pruebas de ensayo y error y revisar cómo se relacionan los datos entre tablas.

---

## Extra opcional: importar base de datos de empleados

Además, puedes practicar con la base de datos de empleados y departamentos desde la siguiente referencia:

- https://www.discoduroderoer.es/ejercicios-propuestos-y-resueltos-de-consultas-mysql-empleados-y-departamentos/
- https://github.com/DiscoDurodeRoer/scripts-bd/blob/master/mysql/empleados_departamentos/empleados_departamentos_mysql.sql

Cuando la base de datos funcione, practica los ejercicios propuestos:

- Seguidos: del 1 al 18
- Sueltos: 24, 25, 27, 28, 31

> Nota: para consultar una tabla de otra base de datos, se usa la notación `basededatos.tabla`.

Ejemplo:

```sql
SELECT *
FROM empleados.comisionE;
```
