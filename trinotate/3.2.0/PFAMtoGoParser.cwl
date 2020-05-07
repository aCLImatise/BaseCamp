class: CommandLineTool
id: PFAMtoGoParser.pl.cwl
inputs:
- id: pfam_to_go
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- PFAMtoGoParser.pl
