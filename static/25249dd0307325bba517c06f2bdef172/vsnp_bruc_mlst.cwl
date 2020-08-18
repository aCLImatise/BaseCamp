class: CommandLineTool
id: ../../../vsnp_bruc_mlst.py.cwl
inputs:
- id: read_one
  doc: 'Required: single read'
  type: string
  inputBinding:
    prefix: --read1
- id: read_two
  doc: 'Optional: paired read'
  type: string
  inputBinding:
    prefix: --read2
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_bruc_mlst.py
