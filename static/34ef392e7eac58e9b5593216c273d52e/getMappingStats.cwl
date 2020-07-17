class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getMappingStats.pl.cwl
inputs:
- id: min
  doc: <#> (minimum length to consider a sequence an adapter-dimer, def. 15)
  type: boolean
  inputBinding:
    prefix: -min
- id: genome
  doc: (limit analysis to alignment for this genome)
  type: string
  inputBinding:
    prefix: -genome
- id: sample_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: directory_two
  doc: ''
  type: Directory
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- getMappingStats.pl
