class: CommandLineTool
id: bamFlags_flags.cwl
inputs:
- id: in_flags
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
- bamFlags
- flags
