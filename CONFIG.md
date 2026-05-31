# Configuración del Sistema de Reservas

## ✅ SOLUCIÓN AL ERROR "Failed to fetch"

El error "Failed to fetch" ocurre porque el servidor backend no está corriendo. La solución es usar el comando correcto:

### Comando correcto para iniciar TODO:
```bash
npm run dev:full
```

Este comando inicia automáticamente:
- **Frontend**: http://localhost:5173 (React)
- **Backend**: http://localhost:5000 (API)

### Scripts disponibles:
- `npm run dev:full` - Ambos servidores
- `npm run dev` - Solo frontend
- `npm run dev:api` - Solo backend

### Scripts de inicio automático:
- **Windows**: `start.bat`
- **Linux/Mac**: `./start.sh`

## 🔧 Configuración técnica

### Variables de entorno (.env):
```
VITE_API_URL=http://localhost:5000
```

### Proxy de Vite configurado en vite.config.js:
```javascript
server: {
  proxy: {
    '/api': {
      target: 'http://localhost:5000',
      changeOrigin: true
    }
  }
}
```

## 🚀 Inicio rápido

1. **Primera vez**: Ejecuta `start.bat` (Windows) o `./start.sh` (Linux/Mac)
2. **Después**: Usa `npm run dev:full`

¡El error ya no aparecerá si usas estos comandos!