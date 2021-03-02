class: CommandLineTool
id: genpept2gsi.pl.cwl
inputs:
- id: in_help_dot_gsi
  doc: 0 sequence names.
  type: long?
  inputBinding:
    prefix: --help.gsi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genpept2gsi.pl
