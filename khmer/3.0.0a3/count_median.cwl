class: CommandLineTool
id: ../../../count_median.py.cwl
inputs:
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: input_count_graph_filename
  doc: input k-mer countgraph filename
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
- id: output_summary_filename
  doc: output summary filename
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- count-median.py
