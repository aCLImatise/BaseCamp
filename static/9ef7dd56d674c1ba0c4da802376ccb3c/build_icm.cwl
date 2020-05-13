class: CommandLineTool
id: build_icm.cwl
inputs:
- id: d
  doc: Set depth of model to <num>
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: Ignore input strings with in-frame stop codons
  type: boolean
  inputBinding:
    prefix: -F
- id: p
  doc: Set period of model to <num>
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: Use the reverse of input strings to build the model
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: Output model as text (for debugging only)
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: Set verbose level; higher is more diagnostic printouts
  type: string
  inputBinding:
    prefix: -v
- id: w
  doc: Set length of model window to <num>
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- build-icm
