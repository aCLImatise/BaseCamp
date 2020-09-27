class: CommandLineTool
id: ufasta_cmd.cwl
inputs:
- id: in_arg_dot_dot_dot
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
- ufasta
- cmd
