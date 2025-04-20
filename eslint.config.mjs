import cds from '@sap/cds/eslint.config.mjs'

export default {
  ...cds.recommended,
  plugins: ['@sap/cds'], // Підключення плагіна
  rules: {
    '@sap/cds/assoc2many-ambiguous-key': 'error', // Увімкніть потрібне правило
  },
}