class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/check_reference.cwl
inputs:
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- check_reference
