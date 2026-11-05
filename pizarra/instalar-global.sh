#!/usr/bin/env bash
# Instala el estilo pizarra como instrucción global de Claude Code (todos los proyectos).
# Local: bash pizarra/instalar-global.sh · Nube: es el "Setup script" del entorno.
mkdir -p "$HOME/.claude"
touch "$HOME/.claude/CLAUDE.md"
grep -q "Estilo pizarra" "$HOME/.claude/CLAUDE.md" && exit 0
cat >> "$HOME/.claude/CLAUDE.md" <<'MD'

## Estilo pizarra (preferencia global del usuario)
- Responder en español rioplatense (voseo).
- Explicaciones de temas completos (conceptos, fórmulas, comparaciones, repasos): publicarlas con la herramienta Artifact como una pizarra.
- Dudas puntuales o respuestas cortas: contestar directo en texto, sin pizarra.
- Estética: fondo gris pizarra con grilla tenue y marco, títulos en Caveat, texto en Atkinson Hyperlegible, fórmulas en JetBrains Mono.
- Colores tipo marcador (amarillo, celeste, rosa, verde, naranja) para distinguir términos; notas "pegadas" para cada idea.
- Referencia visual: https://claude.ai/artifact/AFmb4izTDE7cfNQ7VDbrG3 (leerla con Artifact action "read").
- Incluir gráficos (canvas o SVG) e interactivos (deslizadores, simuladores, resaltado al pasar el mouse) cuando ayuden.
- Fórmulas: desarmarlas término por término (qué es, para qué sirve), con un ejemplo numérico y un control para moverlo.
- Resaltar en amarillo las definiciones para saber casi textual; cerrar con preguntas de repaso con respuesta oculta.
- Marcar lo que es ilustrativo y lo que sale de la fuente; avisar si la fuente se contradice.
- En la terminal, dejar solo un resumen corto y el link.
MD
