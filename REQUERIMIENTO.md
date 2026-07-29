# 🎫 Ticket de Requerimiento #2026-014

**De:** Nimbus Retail Corp (Cliente)
**Para:** ClickForge Software (Estudio de desarrollo)
**Asunto:** Sistema interno de gestión de usuarios — módulo con errores críticos
**Prioridad:** Alta
**Estado:** Abierto

---

## Contexto

Nimbus Retail Corp contrató hace unos meses a un desarrollador freelance para construir un
módulo interno de **gestión de usuarios** (backend en Flask + MySQL). El freelance entregó el
proyecto, cobró el anticipo... y desapareció. Nadie volvió a saber de él. 

El equipo de QA de Nimbus probó la aplicación y **no logró usarla**: la página principal no
carga, el formulario de alta de usuarios tira errores, y cuando "parece" que un usuario se creó,
en realidad no aparece en el listado.

Nimbus contrató a **ClickForge Software** (ustedes, equipo 4B) para hacerse cargo del
mantenimiento correctivo del proyecto.

## Alcance del trabajo solicitado

El sistema **no** debe convertirse en un CRUD completo todavía. Nimbus solo pidió, en esta
primera etapa, un **CR** (Create + Read):

- ✅ Ver el listado completo de usuarios registrados
- ✅ Cargar un nuevo usuario mediante un formulario
- ✅ Al guardar, el usuario debe reflejarse inmediatamente en el listado

Nada de Update ni Delete por ahora — eso será una fase futura del contrato (y probablemente
otro ticket para el equipo).

## Entregable esperado

- El código fuente ya existe (fork de este repositorio). **No se debe reescribir desde cero.**
- Cada integrante o pareja de trabajo debe:
  1. Hacer **fork** del repositorio del proyecto.
  2. Clonar su fork localmente.
  3. Crear una rama por corrección (o por bloque de correcciones relacionadas).
  4. Corregir los bugs que impiden que el sistema funcione.
  5. Commitear con mensajes claros y descriptivos.
  6. Abrir un **Pull Request** hacia el repositorio original, describiendo qué bug se corrigió y cómo se detectó.

## Criterios de aceptación (Definition of Done)

- [ ] La aplicación levanta sin errores (`flask run` / `python app.py`)
- [ ] La ruta de listado (`/`) muestra correctamente **todos** los usuarios de la tabla
- [ ] La ruta de creación (`/crear`) muestra el formulario y acepta el envío por POST
- [ ] Al crear un usuario, este queda **persistido en la base de datos** (no se pierde al reiniciar el server)
- [ ] Luego de crear un usuario, la aplicación redirige al listado y el nuevo registro es visible
- [ ] El Pull Request describe el/los bug(s) corregido(s)

## Nota del cliente

> "No sabemos cuántos bugs hay. Sabemos que son 'varios'. Confiamos en que su equipo los va a
> encontrar todos antes de que esto le cueste otro cliente enojado a Nimbus." — *Gerencia de Nimbus Retail Corp*

---
*Este ticket fue generado como parte de una actividad de práctica del curso — Grupo 4B.*
