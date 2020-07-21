class: CommandLineTool
id: ../../../fpa_gfa_SUBCOMMAND.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: fpa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- gfa
- SUBCOMMAND
