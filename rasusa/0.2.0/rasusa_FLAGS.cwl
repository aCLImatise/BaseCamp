class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rasusa_FLAGS.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
- id: genome_size
  doc: ''
  type: string
  inputBinding:
    prefix: --genome-size
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- rasusa
- FLAGS
