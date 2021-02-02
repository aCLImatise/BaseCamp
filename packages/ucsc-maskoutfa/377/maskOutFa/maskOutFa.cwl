class: CommandLineTool
id: maskOutFa.cwl
inputs:
- id: in_soft
  doc: '- puts masked parts in lower case other in upper.'
  type: boolean
  inputBinding:
    prefix: -soft
- id: in_soft_add
  doc: '- lower cases masked bits, leaves others unchanged'
  type: boolean
  inputBinding:
    prefix: -softAdd
- id: in_clip
  doc: '- clip out of bounds mask records rather than dying.'
  type: boolean
  inputBinding:
    prefix: -clip
- id: in_mask_format
  doc: '- "out" or "bed" for when input does not have required extension.'
  type: string
  inputBinding:
    prefix: -maskFormat
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maskOutFa
