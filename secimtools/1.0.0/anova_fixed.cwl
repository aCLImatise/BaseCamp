class: CommandLineTool
id: ../../../anova_fixed.py.cwl
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
- id: fig_two
  doc: Output figure name for volcano plots [pdf].
  type: string
  inputBinding:
    prefix: --fig2
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: id
  doc: ''
  type: string
  inputBinding:
    prefix: -id
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- anova_fixed.py
