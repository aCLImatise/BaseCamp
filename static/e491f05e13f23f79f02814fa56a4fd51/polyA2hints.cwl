class: CommandLineTool
id: polyA2hints.pl.cwl
inputs:
- id: swap_strand
  doc: swap strand, currently use this for polyT files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- polyA2hints.pl
