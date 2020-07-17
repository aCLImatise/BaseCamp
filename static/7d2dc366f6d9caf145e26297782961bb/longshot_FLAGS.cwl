class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/longshot_FLAGS.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- longshot
- FLAGS
