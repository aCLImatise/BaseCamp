class: CommandLineTool
id: batchFindMotifsGenome.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- batchFindMotifsGenome.pl
