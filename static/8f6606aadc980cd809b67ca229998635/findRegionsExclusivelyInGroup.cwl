class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/findRegionsExclusivelyInGroup.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_group_genomes
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- findRegionsExclusivelyInGroup
