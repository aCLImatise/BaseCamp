class: CommandLineTool
id: get_position_from_sam.py_fastafile.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_get_position_from_sam_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a_file
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
- get_position_from_sam.py
- fastafile
