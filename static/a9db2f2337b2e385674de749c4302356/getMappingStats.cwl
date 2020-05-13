class: CommandLineTool
id: getMappingStats.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- getMappingStats.pl
