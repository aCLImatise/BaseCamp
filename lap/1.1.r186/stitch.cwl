class: CommandLineTool
id: stitch.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_ie
  doc: Reverse complement the first mate, instead of the second
  type: boolean
  inputBinding:
    prefix: --outie
outputs: []
cwlVersion: v1.1
baseCommand:
- stitch
