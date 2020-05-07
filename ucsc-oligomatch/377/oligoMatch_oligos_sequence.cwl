class: CommandLineTool
id: oligoMatch_oligos_sequence.cwl
inputs:
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oligoMatch
- oligos
- sequence
