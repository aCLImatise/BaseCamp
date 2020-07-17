class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2fna_OUTPUT.cwl
inputs:
- id: bam_two_fna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fna
- OUTPUT
