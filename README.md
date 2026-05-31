# Sistema de Reservas de Restaurante

## 🚀 Inicio Rápido

Para ejecutar la aplicación completa (frontend + backend), usa este comando:

```bash
npm run dev:full
```

Esto iniciará automáticamente:
- **Frontend**: http://localhost:5174 (React + Vite)
- **Backend**: http://localhost:5000 (Express + MongoDB)

## 📋 Comandos Disponibles

### Ejecutar todo el proyecto:
```bash
npm run dev:full
```

### Ejecutar solo el frontend:
```bash
npm run dev
```

### Ejecutar solo el backend:
```bash
npm run dev:api
```

## 🔧 Configuración

### Variables de entorno (.env)
```env
VITE_API_URL=http://localhost:5000
```

### Base de datos
El proyecto usa MongoDB. Asegúrate de tener MongoDB corriendo localmente o configura la variable `MONGODB_URI` en `api-app/.env`.

## 📁 Estructura del Proyecto

```
proyecto-react/
├── src/                    # Frontend React
├── api-app/               # Backend Express
│   ├── models/           # Modelos de MongoDB
│   ├── routes/           # Rutas de la API
│   └── server.js         # Servidor principal
├── public/               # Archivos estáticos
└── package.json          # Scripts del proyecto
```

## 🐛 Solución de Problemas

### Error "Failed to fetch"
Si ves este error, significa que el servidor backend no está corriendo. Ejecuta:

```bash
npm run dev:full
```

### Puerto ocupado
Si el puerto 5173 está ocupado, Vite usará automáticamente el siguiente puerto disponible (5174).

## ✨ Características

- ✅ Gestión de reservas de restaurante
- ✅ Validación de mesas ocupadas
- ✅ Cálculo automático de ingresos
- ✅ Sistema de códigos QR para reservas
- ✅ Interfaz responsive
- ✅ Estadísticas en tiempo real

---
**Nota**: Siempre usa `npm run dev:full` para iniciar ambos servidores simultáneamente.

## Funcionalidades

- Registrar reservas con código CR, fecha, mesa, precio y alimentos
- Ver lista de reservas
- Generar QR para cada reserva
- Eliminar todas las reservas

## APIs

- `GET /api/reservas`: Obtener todas las reservas
- `POST /api/reservas`: Crear nueva reserva
- `DELETE /api/reservas`: Eliminar todas las reservas

## Notas

- Asegúrate de que el backend esté corriendo antes de usar el frontend
- Los datos se almacenan en MongoDB en lugar de localStorage

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
