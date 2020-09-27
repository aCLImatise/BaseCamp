class: CommandLineTool
id: filter_abund.py.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -C
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_input_count_graph_filename
  doc: The input k-mer countgraph filename
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: Input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter-abund.py
