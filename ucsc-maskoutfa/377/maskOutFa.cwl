class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maskOutFa.cwl
inputs:
- id: soft
  doc: '- puts masked parts in lower case other in upper.'
  type: boolean
  inputBinding:
    prefix: -soft
- id: soft_add
  doc: '- lower cases masked bits, leaves others unchanged'
  type: boolean
  inputBinding:
    prefix: -softAdd
- id: clip
  doc: '- clip out of bounds mask records rather than dying.'
  type: boolean
  inputBinding:
    prefix: -clip
- id: mask_format
  doc: '- "out" or "bed" for when input does not have required extension.'
  type: string
  inputBinding:
    prefix: -maskFormat
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_fa_dot_masked
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- maskOutFa
