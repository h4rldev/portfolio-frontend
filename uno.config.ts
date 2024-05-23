import { defineConfig, presetUno } from 'unocss'

export default defineConfig({
  content: {
    filesystem: [
      '**/*.{html,scss}',
    ],
  },
  presets: [
    presetUno(),
  ],
})
