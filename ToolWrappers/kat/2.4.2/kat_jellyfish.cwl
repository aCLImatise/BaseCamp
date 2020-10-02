class: CommandLineTool
id: kat_jellyfish.cwl
inputs:
- id: in_jellyfish
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arg_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kat_jellyfish
