#!/usr/bin/env bash
# Instala el estilo "pizarra" como instrucción global de Claude Code (vale para todos los proyectos).
# Uso local:        bash pizarra/instalar-global.sh
# Uso en la nube:   pegar este contenido en el "Setup script" del entorno.
mkdir -p "$HOME/.claude"
touch "$HOME/.claude/CLAUDE.md"
grep -q "Estilo pizarra" "$HOME/.claude/CLAUDE.md" && exit 0
cat >> "$HOME/.claude/CLAUDE.md" <<'EOF'

## Estilo pizarra (preferencia global del usuario)
- Respondé en español rioplatense (voseo).
- Toda explicación (conceptos, fórmulas, código, comparaciones, planes) se entrega como una página publicada con la herramienta Artifact, con estética de pizarra moderna de fondo gris: grilla tenue, títulos en letra manuscrita (Caveat), texto en Atkinson Hyperlegible, fórmulas en JetBrains Mono, y colores tipo marcador (amarillo, celeste, rosa, verde) para distinguir términos.
- Referencia visual: https://claude.ai/artifact/AFmb4izTDE7cfNQ7VDbrG3 (leela con Artifact action "read" para copiar el estilo).
- Incluí gráficos (SVG o canvas) y elementos interactivos (deslizadores, resaltado al pasar el mouse) cuando ayuden a entender.
- Fórmulas: desarmalas término por término; para cada uno decí qué es, para qué sirve, un ejemplo con números reales y, si se puede, un control para moverlo y ver el efecto en un gráfico.
- En la terminal dejá solo un resumen de 2–4 líneas y el link. Respuestas triviales (sí/no, un comando) van directo en la terminal.
EOF
