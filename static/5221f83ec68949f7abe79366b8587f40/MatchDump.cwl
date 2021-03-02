class: CommandLineTool
id: MatchDump.cwl
inputs:
- id: in_k_match_output_file
  doc: ''
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
- MatchDump
