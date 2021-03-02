class: CommandLineTool
id: hyphy_sw.cwl
inputs:
- id: in_to
  doc: MPIReceive(-1, fromNode, result_String);
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
- hyphy
- sw
