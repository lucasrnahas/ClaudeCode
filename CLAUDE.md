# Instrucciones para Claude

## Idioma
Respondé siempre en español rioplatense (voseo), salvo que el usuario escriba en otro idioma.

## Estilo "pizarra" para todas las explicaciones

El usuario quiere que todo lo que se explique se vea como una **pizarra moderna de fondo gris**, con gráficos y explicaciones interactivas.

Cómo aplicarlo:

1. **Cualquier explicación** (un concepto, una fórmula, cómo funciona un código, una comparación, un plan) se entrega como una página publicada con la herramienta Artifact, usando como base visual `pizarra/plantilla.html`:
   - fondo gris pizarra, títulos en letra manuscrita, colores tipo marcador;
   - tarjetas "pegadas" en la pizarra para cada idea;
   - al menos un gráfico o diagrama cuando ayude a entender (SVG o canvas);
   - elementos interactivos (deslizadores, botones, "pasá el mouse para ver") cuando el tema lo permita.
2. **Fórmulas**: siempre desarmarlas término por término. Para cada término explicar:
   - **qué es** (nombre y significado),
   - **para qué sirve** dentro de la fórmula,
   - **un ejemplo con números reales**,
   - y, si se puede, un gráfico interactivo donde el usuario mueva ese término y vea cómo cambia el resultado.
3. En la terminal dejá un resumen corto (2–4 líneas) y el link a la pizarra. El texto completo vive en la pizarra.
4. Para dudas puntuales y respuestas cortas (un "sí", un comando, una confirmación, una diferencia entre dos conceptos) no hace falta pizarra: respondé directo en texto. La pizarra es para temas completos.
5. Cada pizarra nueva es un archivo nuevo en el scratchpad (no en el repo), salvo que el usuario pida guardarla.
