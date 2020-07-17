class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/stitch.cwl
inputs:
- id: out_ie
  doc: Reverse complement the first mate, instead of the second
  type: boolean
  inputBinding:
    prefix: --outie
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stitch
