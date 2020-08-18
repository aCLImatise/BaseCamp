class: CommandLineTool
id: ../../../PATHOGIST_distance.cwl
inputs:
- id: bed
  doc: bed file of unwanted SNP positions in the genome
  type: string
  inputBinding:
    prefix: --bed
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- distance
