class: CommandLineTool
id: gen_cons_from_poa.py.cwl
inputs:
- id: in_poa_path
  doc: ''
  type: File
  inputBinding:
    prefix: --poa_path
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gen_cons_from_poa.py
