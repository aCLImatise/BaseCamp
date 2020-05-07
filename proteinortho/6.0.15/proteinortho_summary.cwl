class: CommandLineTool
id: proteinortho_summary.pl.cwl
inputs:
- id: options
  doc: -format,-f      enables the table formatting instead of the plain csv output.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_summary.pl
