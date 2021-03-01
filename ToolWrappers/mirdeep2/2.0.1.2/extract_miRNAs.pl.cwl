class: CommandLineTool
id: extract_miRNAs.pl.cwl
inputs:
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_perl
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
- extract_miRNAs.pl
