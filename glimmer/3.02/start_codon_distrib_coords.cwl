class: CommandLineTool
id: start_codon_distrib_coords.cwl
inputs:
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
- start-codon-distrib
- coords
