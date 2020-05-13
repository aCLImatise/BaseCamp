class: CommandLineTool
id: krocus_allele_directory.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- krocus
- allele_directory
