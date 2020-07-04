class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_spoligotype.py.cwl
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
- id: debug
  doc: turn off map.pooling of samples
  type: boolean
  inputBinding:
    prefix: --debug
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
- vsnp_spoligotype.py
