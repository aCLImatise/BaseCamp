class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/entropy_score.cwl
inputs:
- id: nowrap
  doc: Use the actual input coordinates without any wraparound that would be needed
    by a circular genome.  Without this option, the output sequence is the shorter
    of the two ways around the circle.  Use the -d option to specify direction explicitly.
  type: boolean
  inputBinding:
    prefix: --nowrap
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- entropy-score
