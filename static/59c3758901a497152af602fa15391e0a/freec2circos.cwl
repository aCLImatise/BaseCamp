class: CommandLineTool
id: freec2circos.pl.cwl
inputs:
- id: v
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- freec2circos.pl
