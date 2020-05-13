class: CommandLineTool
id: ppanini_barplot.cwl
inputs:
- id: p_panini_input
  doc: Gene abundance table
  type: string
  inputBinding:
    prefix: --ppanini-input
- id: p_panini_output
  doc: PPANINI output table
  type: string
  inputBinding:
    prefix: --ppanini-output
- id: summary_table
  doc: Summary table
  type: string
  inputBinding:
    prefix: --summary-table
- id: scale
  doc: 'Scale: abundance or counts [default: abundance]'
  type: string
  inputBinding:
    prefix: --scale
- id: output
  doc: output plot)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_barplot
