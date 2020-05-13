class: CommandLineTool
id: oligoMatch_oligos_output.bed.cwl
inputs:
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- oligoMatch
- oligos
- output.bed
