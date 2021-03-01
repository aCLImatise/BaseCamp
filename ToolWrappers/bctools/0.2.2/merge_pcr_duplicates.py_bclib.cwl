class: CommandLineTool
id: merge_pcr_duplicates.py_bclib.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_merge_pcr_duplicates_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bc_lib
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge_pcr_duplicates.py
- bclib
