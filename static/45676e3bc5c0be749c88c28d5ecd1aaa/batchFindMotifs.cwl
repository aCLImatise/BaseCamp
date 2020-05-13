class: CommandLineTool
id: batchFindMotifs.pl.cwl
inputs:
- id: cpu
  doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  type: boolean
  inputBinding:
    prefix: -cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- batchFindMotifs.pl
