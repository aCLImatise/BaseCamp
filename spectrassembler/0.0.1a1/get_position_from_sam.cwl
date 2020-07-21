class: CommandLineTool
id: ../../../get_position_from_sam.py_fastafile.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: get_position_from_sam_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- get_position_from_sam.py
- fastafile
