class: CommandLineTool
id: ../../../strainest_mapstats_MAPPED.cwl
inputs:
- id: examples
  doc: strainest mapstats mapped.fna stats
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- strainest
- mapstats
- MAPPED
