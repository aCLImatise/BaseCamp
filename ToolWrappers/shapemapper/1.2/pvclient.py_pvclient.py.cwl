class: CommandLineTool
id: ../../../pvclient.py_pvclient.py.cwl
inputs:
- id: in_ct
  doc: Connect-table secondary structure.
  type: string
  inputBinding:
    prefix: --ct
- id: in_structures
  doc: ''
  type: string
  inputBinding:
    prefix: --structures
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: in_title
  doc: ''
  type: string
  inputBinding:
    prefix: --title
- id: in_no_title
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no_title
- id: in_shape
  doc: Chemical-probing data.
  type: string
  inputBinding:
    prefix: --shape
- id: in_diff
  doc: "<differenceFile.diff> [<upperColor> <lowerColor>\n<upperThreshold> <lowerThreshold>]\
    \ (repeat)"
  type: string[]
  inputBinding:
    prefix: --diff
- id: in_range
  doc: ''
  type: string[]
  inputBinding:
    prefix: --range
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
