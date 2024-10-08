@default:
  just --list

@watch file_arg="":
  watchexec -w css/in/{{file_arg}}.scss just build {{file_arg}}

@build file_arg="":
  pnpm install .
  postcss "css/in/{{file_arg}}.scss" -o "css/out/{{file_arg}}.css"

@dev:
  chmod +x ./www-bin
  ./www-bin
