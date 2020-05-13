class: CommandLineTool
id: netSplit_in.net.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- netSplit
- in.net
