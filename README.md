# 🐛 Usuarios CR — Actividad de Debugging Colaborativo (Grupo 4B)

Bienvenido/a a **ClickForge Software**. Nimbus Retail Corp les encargó hacerse cargo de un
proyecto abandonado por otro desarrollador. Antes de arrancar, leé el **[REQUERIMIENTO.md](./REQUERIMIENTO.md)**
completo — ahí está el contexto y los criterios de aceptación del cliente.

## 🎯 Objetivo de la actividad

Este repositorio contiene una aplicación **Flask + MySQL** que implementa un CR (Create + Read)
de usuarios... pero **no funciona**. Tiene varios bugs de distinto tipo y dificultad: errores de
configuración, de SQL, de rutas de Flask, de formularios HTML y de templates Jinja2.

Tu tarea **no es reescribir el proyecto**, sino encontrar y corregir los errores que impiden
que cumpla el requerimiento del cliente, siguiendo un flujo de trabajo real de colaboración
en equipo mediante **fork + pull request**.

## 🔧 Setup del proyecto

```bash
# 1. Crear la base de datos
mysql -u root -p < esquema_usuarios.sql

# 2. Crear entorno virtual e instalar dependencias
python -m venv venv
source venv/bin/activate      # En Windows: venv\Scripts\activate
pip install -r requirements.txt

# 3. Ejecutar la app
python app.py
```

## 🔁 Flujo de trabajo obligatorio: Fork + Pull Request

1. **Fork** este repositorio a tu cuenta de GitHub (botón "Fork" arriba a la derecha).
2. **Clonar tu fork** en tu máquina:
   ```bash
   git clone https://github.com/TU-USUARIO/usuarios-cr.git
   cd usuarios-cr
   ```
3. **Crear una rama** para tu corrección (una rama por bug, o por grupo de bugs relacionados):
   ```bash
   git checkout -b fix/conexion-mysql
   ```
4. **Corregir el bug**, probar que funciona localmente.
5. **Commitear** con un mensaje descriptivo:
   ```bash
   git add .
   git commit -m "fix: corrige typo en host de conexión MySQL (locahost -> localhost)"
   ```
6. **Pushear** tu rama a tu fork:
   ```bash
   git push origin fix/conexion-mysql
   ```
7. **Abrir un Pull Request** desde tu fork hacia el repositorio original del curso, explicando:
   - Qué bug encontraste
   - Cómo lo detectaste (mensaje de error, comportamiento raro, etc.)
   - Qué cambiaste para solucionarlo
8. Repetir el proceso (nueva rama desde `main` actualizado) por cada bug adicional que corrijas.

> 💡 Se recomienda **un PR por bug o por bugs claramente relacionados**, no un único PR gigante
> con todos los cambios juntos. Esto simula cómo se trabaja en equipos reales.

## ✅ Checklist de aceptación (copiá esto en tu PR)

- [ ] La app levanta sin errores
- [ ] `/` muestra el listado completo de usuarios
- [ ] `/crear` muestra el formulario correctamente
- [ ] Enviar el formulario crea el usuario en la base de datos
- [ ] Después de crear, se redirige al listado y el nuevo usuario aparece

## 🕵️ Pistas (por si el equipo se traba)

- Prestá atención a los **mensajes de error exactos** en la terminal y en el navegador — Flask
  y MySQL suelen decir bastante más de lo que parece a primera vista.
- Revisá que los **nombres de los campos del formulario** (`name="..."` en el HTML) coincidan
  con lo que el backend intenta leer.
- Revisá que las **variables que pasa la vista** (`render_template(..., variable=...)`) coincidan
  con las que usa el `{% for %}` del template.
- No todos los bugs "explotan" con un error visible — algunos hacen que algo se guarde mal o
  no se guarde en absoluto. Probá el flujo completo, no solo que la página cargue.
