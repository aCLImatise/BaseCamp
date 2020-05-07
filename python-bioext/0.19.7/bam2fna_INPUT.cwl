class: CommandLineTool
id: bam2fna_INPUT.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fna
- INPUT
