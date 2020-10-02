class: CommandLineTool
id: catAlign.pl.cwl
inputs:
- id: in_defined_dot
  doc: It was interpreted as a "" or a 0, but maybe it was a mistake.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- catAlign.pl
