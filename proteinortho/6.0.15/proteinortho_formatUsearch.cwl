class: CommandLineTool
id: proteinortho_formatUsearch.pl.cwl
inputs:
- id: format_up_l
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_a
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_formatUsearch.pl
