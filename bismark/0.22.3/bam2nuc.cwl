class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2nuc.cwl
inputs:
- id: genome_folder
  doc: ''
  type: File
  inputBinding:
    prefix: --genome_folder
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2nuc
