class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmagick.cwl
inputs:
- id: verbose
  doc: Be more verbose. Specify -vv or -vvv for even more
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Suppress output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
