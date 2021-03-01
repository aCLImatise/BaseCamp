class: CommandLineTool
id: vsnp_reference_options.py.cwl
inputs:
- id: in_select_ref
  doc: 'Required: single read, R1 when Illumina read'
  type: long?
  inputBinding:
    prefix: --select_ref
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vsnp_reference_options.py
