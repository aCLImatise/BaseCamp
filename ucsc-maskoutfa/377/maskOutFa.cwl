class: CommandLineTool
id: maskOutFa.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_fam_asked
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: puts
  doc: parts in lower case other in upper.
  type: string
  inputBinding:
    prefix: '- puts'
- id: soft_add
  doc: masked bits, leaves others unchanged
  type: string
  inputBinding:
    prefix: -softAdd
- id: clip
  doc: of bounds mask records rather than dying.
  type: string
  inputBinding:
    prefix: '- clip'
- id: mask_format
  doc: '- "out" or "bed" for when input does not have required extension.'
  type: string
  inputBinding:
    prefix: -maskFormat
outputs: []
cwlVersion: v1.1
baseCommand:
- maskOutFa
