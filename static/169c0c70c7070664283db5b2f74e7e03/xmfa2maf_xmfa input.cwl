class: CommandLineTool
id: xmfa2maf_xmfa input.cwl
inputs:
- id: maf_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- xmfa2maf
- xmfa input
