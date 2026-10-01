import react from '@vitejs/plugin-react'
import { defineConfig } from 'vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      '/esp': {
        target: 'http://10.129.177.97',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/esp/, ''),
        timeout: 20000,
      }
    }
  }
})
