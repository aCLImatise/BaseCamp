class: CommandLineTool
id: rnazBEDstats.pl.cwl
inputs:
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnazBEDstats.pl
