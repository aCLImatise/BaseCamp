class: CommandLineTool
id: ct2rnaml.cwl
inputs:
- id: in_help_dot_ct
  doc: ': No such file or directory'
  type: boolean
  inputBinding:
    prefix: --help.ct
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ct2rnaml
