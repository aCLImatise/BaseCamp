class: CommandLineTool
id: FlowSOMCompare.R.cwl
inputs:
- id: in_union
  doc: "Attaching package: 'flowCore'"
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
- FlowSOMCompare.R
