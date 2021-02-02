class: CommandLineTool
id: netSplit.cwl
inputs:
- id: in_in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- netSplit
