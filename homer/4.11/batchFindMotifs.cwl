class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/batchFindMotifs.pl.cwl
inputs:
- id: cpu
  doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: f
  doc: ''
  type: string[]
  inputBinding:
    prefix: -f
- id: promoter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- batchFindMotifs.pl
