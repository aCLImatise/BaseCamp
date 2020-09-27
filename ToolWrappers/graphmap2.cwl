class: CommandLineTool
id: graphmap2.cwl
inputs:
- id: in_tool
  doc: "STR   Specifies the tool to run:\nalign - the entire GraphMap pipeline.\n\
    owler - Overlapping With Long Erroneous Reads.\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- graphmap2
