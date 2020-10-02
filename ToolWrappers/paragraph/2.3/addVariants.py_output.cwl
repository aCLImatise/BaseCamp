class: CommandLineTool
id: addVariants.py_output.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_variants
  doc: ''
  type: string
  inputBinding:
    prefix: --variants
- id: in_add_variants_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- addVariants.py
- output
