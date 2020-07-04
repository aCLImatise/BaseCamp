class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_pcr_duplicates.py_bclib.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: merge_pcr_duplicates_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bc_lib
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_pcr_duplicates.py
- bclib
