class: CommandLineTool
id: ../../../netChainSubset.cwl
inputs:
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- netChainSubset
