class: CommandLineTool
id: ktImportRDPComparison.cwl
inputs:
- id: rdp_comparison
  doc: RDP comparison result downloaded as text.
  type: string
  inputBinding:
    position: 0
- id: name
  doc: A name for each library to appear in the chart. The default is "Library [1/2]".
    _________
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ktImportRDPComparison
