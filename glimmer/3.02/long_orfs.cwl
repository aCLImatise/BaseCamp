class: CommandLineTool
id: long_orfs.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stop_codons
  doc: 'Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa'
  type: string
  inputBinding:
    prefix: --stop_codons
outputs: []
cwlVersion: v1.1
baseCommand:
- long-orfs
