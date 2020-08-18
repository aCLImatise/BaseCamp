class: CommandLineTool
id: ../../../batchFindMotifsGenome.pl.cwl
inputs:
- id: dist
  doc: <#> (Will only analyze promoter-distal regions ># away from TSS)
  type: boolean
  inputBinding:
    prefix: -dist
- id: cpu
  doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: two
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- batchFindMotifsGenome.pl
