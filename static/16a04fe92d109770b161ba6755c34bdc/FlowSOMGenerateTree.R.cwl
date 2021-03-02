class: CommandLineTool
id: FlowSOMGenerateTree.R.cwl
inputs:
- id: in_union
  doc: "Attaching package: 'flowCore'"
  type: string
  inputBinding:
    position: 0
- id: in_normalize
  doc: 'Error in if (args[3] == "" || args[3] == "i.e.:1,2,5") { : '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FlowSOMGenerateTree.R
