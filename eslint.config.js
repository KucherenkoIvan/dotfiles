export default [
  {
    extends: ['airbnb', 'prettier', 'plugin:node/recommended'],
    plugins: ['prettier'],
    rules: {
      'prettier/prettier': 'error',
      'no-unused-vars': 'warn',
      'no-console': 'warn',
      'class-methods-use-this': 'warn',
    },
  },
];
