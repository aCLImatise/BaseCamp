class: CommandLineTool
id: ../../../vcf2ld_neighbor.cwl
inputs:
- id: people_include_id
  doc: '[], --peopleIncludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: people_exclude_id
  doc: '[], --peopleExcludeFile []'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2ld_neighbor
