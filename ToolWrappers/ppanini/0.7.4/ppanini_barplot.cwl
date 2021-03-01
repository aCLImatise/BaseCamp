class: CommandLineTool
id: ppanini_barplot.cwl
inputs:
- id: in_p_panini_input
  doc: Gene abundance table
  type: string?
  inputBinding:
    prefix: --ppanini-input
- id: in_p_panini_output
  doc: PPANINI output table
  type: string?
  inputBinding:
    prefix: --ppanini-output
- id: in_summary_table
  doc: Summary table
  type: string?
  inputBinding:
    prefix: --summary-table
- id: in_scale
  doc: 'Scale: abundance or counts [default: abundance]'
  type: string?
  inputBinding:
    prefix: --scale
- id: in_output
  doc: "output plot)\n"
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini_barplot
