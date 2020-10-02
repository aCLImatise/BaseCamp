class: CommandLineTool
id: PFAMtoGoParser.pl.cwl
inputs:
- id: in_pfam_to_go
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
- PFAMtoGoParser.pl
