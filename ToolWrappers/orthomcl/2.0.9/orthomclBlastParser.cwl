class: CommandLineTool
id: orthomclBlastParser.cwl
inputs:
- id: in_orthomcl_adjust_fast_a
  doc: 'm8 format has these columns:'
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
- orthomclBlastParser
