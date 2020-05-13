class: CommandLineTool
id: oligoMatch_output.bed.cwl
inputs:
- id: oligos
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- oligoMatch
- output.bed
