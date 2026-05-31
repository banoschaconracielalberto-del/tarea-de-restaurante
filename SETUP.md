# Configuración del Proyecto

## Problema Resuelto ✅
Se corrigió el error "Failed to fetch - ¿El servidor está corriendo en http://localhost:5000?" usando variables de entorno y proxy de Vite.

## Cómo Funciona Ahora

### 1. Variables de Entorno (.env)
El archivo `.env` contiene la URL del servidor:
```
VITE_API_URL=http://localhost:5000
```

Todos los archivos React ahora usan esta variable en lugar de hardcodear la URL:
```javascript
const apiUrl = import.meta.env.VITE_API_URL || 'http://localhost:5000';
```

### 2. Proxy de Vite
El `vite.config.js` configura un proxy que redirige las peticiones `/api/*` a `http://localhost:5000`:
```javascript
server: {
  proxy: {
    '/api': {
      target: 'http://localhost:5000',
      changeOrigin: true,
      rewrite: (path) => path
    }
  }
}
```

Esto significa que puedes hacer:
```javascript
fetch('/api/reservas') // Se redirige automáticamente a http://localhost:5000/api/reservas
```

### 3. Manejo de Errores Mejorado
- Mensajes de error más claros
- Logs en consola para debugging
- Indicaciones de cómo ejecutar el servidor

## Para Desarrollar Localmente

1. **Terminal 1 - Frontend (Puerto 5173):**
```bash
npm run dev
```

2. **Terminal 2 - Backend (Puerto 5000):**
```bash
cd api-app
npm run dev
# o
npm start
```

## Diferentes Entornos

Si necesitas cambiar la URL del API en diferentes entornos, simplemente crea archivos `.env`:

- `.env` - Desarrollo (localhost:5000)
- `.env.production` - Producción (tu dominio real)
- `.env.test` - Testing

Vite carga automáticamente el archivo `.env` apropiado según el entorno.

## Archivos Modificados
- `vite.config.js` - Agregado proxy
- `.env` - Nuevo archivo con URL de API
- `.env.example` - Referencia de variables
- `src/App.jsx` - Usa variable de entorno
- `src/RegistroRestaurante.jsx` - Usa variable de entorno
- `src/VerReserva.jsx` - Usa variable de entorno

## Ventajas de Esta Solución

✅ **Reutilizable**: Misma URL para todos los fetch  
✅ **Flexible**: Fácil cambiar URL según el entorno  
✅ **Mantenible**: Un solo lugar donde configurar la URL  
✅ **Escalable**: Funciona con production builds  
✅ **Debugging**: Mejores mensajes de error

---
**Nota:** Si el servidor no está corriendo, verás mensajes de error útiles en la consola del navegador indicándote que ejecutes `npm run dev` en la carpeta `api-app/`.
