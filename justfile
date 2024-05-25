@default:
  just --list

@watch:
  pnpm run dev

@build:
  pnpm run build

@dev:
  chmod +x ./portfolio-bin
  ./portfolio-bin
