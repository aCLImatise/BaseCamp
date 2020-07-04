class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mtsv_binner_FLAGS.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: index
  doc: ''
  type: string
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-binner
- FLAGS
