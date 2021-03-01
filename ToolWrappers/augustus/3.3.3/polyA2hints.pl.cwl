class: CommandLineTool
id: polyA2hints.pl.cwl
inputs:
- id: in_swap_strand
  doc: swap strand, currently use this for polyT files
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
- polyA2hints.pl
