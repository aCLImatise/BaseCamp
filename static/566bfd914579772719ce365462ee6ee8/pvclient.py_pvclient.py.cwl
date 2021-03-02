class: CommandLineTool
id: pvclient.py_pvclient.py.cwl
inputs:
- id: in_ct
  doc: Connect-table secondary structure.
  type: string?
  inputBinding:
    prefix: --ct
- id: in_structures
  doc: Chemical-probing data.
  type: string?
  inputBinding:
    prefix: --structures
- id: in_pv_client_do_tpy
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
- pvclient.py
- pvclient.py
