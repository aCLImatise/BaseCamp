class: CommandLineTool
id: ../../../netSplit.cwl
inputs:
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- netSplit
