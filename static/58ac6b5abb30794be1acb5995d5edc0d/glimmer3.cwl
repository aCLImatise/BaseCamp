class: CommandLineTool
id: glimmer3.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: icm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tag
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: stop_codons
  doc: 'Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa'
  type: string
  inputBinding:
    prefix: --stop_codons
outputs: []
cwlVersion: v1.1
baseCommand:
- glimmer3
