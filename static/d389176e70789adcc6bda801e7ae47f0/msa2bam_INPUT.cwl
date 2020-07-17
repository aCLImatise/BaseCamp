class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msa2bam_INPUT.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msa2bam
- INPUT
