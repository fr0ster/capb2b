import cds from '@sap/cds/eslint.config.mjs'
import cdsPlugin from '@sap/eslint-plugin-cds'

export default [
  ...cds.recommended,
  {
    plugins: {
      '@sap/cds': cdsPlugin // Підключення плагіна як об'єкта
    },
    rules: {}
  }
]