class: CommandLineTool
id: nw_support.cwl
inputs:
- id: p
  doc: ': prints values as percentages (default: absolute frequencies)'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_support
