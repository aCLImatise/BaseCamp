class: CommandLineTool
id: square_mash.cwl
inputs:
- id: classic
  doc: Output table in a format suitable for R_mds.pl
  type: boolean
  inputBinding:
    prefix: --classic
outputs: []
cwlVersion: v1.1
baseCommand:
- square_mash
