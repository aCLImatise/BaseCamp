class: CommandLineTool
id: start_codon_distrib_sequence_file.cwl
inputs:
- id: coords
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- start-codon-distrib
- sequence-file
