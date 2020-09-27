class: CommandLineTool
id: pvclient.py_pvclient.py.cwl
inputs:
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: in_structures
  doc: ''
  type: string
  inputBinding:
    prefix: --structures
- id: in_ct
  doc: ''
  type: string
  inputBinding:
    prefix: --ct
- id: in_pv_client_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvclient.py
- pvclient.py
