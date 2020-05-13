class: CommandLineTool
id: anova_fixed.py.cwl
inputs:
- id: out
  doc: Output file name.
  type: string
  inputBinding:
    prefix: --out
- id: flags
  doc: Flags file name.
  type: string
  inputBinding:
    prefix: --flags
- id: fig
  doc: Output figure name for q-q plots [pdf].
  type: string
  inputBinding:
    prefix: --fig
- id: fig2
  doc: Output figure name for volcano plots [pdf].
  type: string
  inputBinding:
    prefix: --fig2
outputs: []
cwlVersion: v1.1
baseCommand:
- anova_fixed.py
