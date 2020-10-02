class: CommandLineTool
id: trimends.cwl
inputs:
- id: in_help_dot_qual
  doc: ', and --help.frg must exist'
  type: boolean
  inputBinding:
    prefix: --help.qual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trimends
