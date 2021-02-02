class: CommandLineTool
id: batchFindMotifs.pl.cwl
inputs:
- id: in_cpu
  doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_f
  doc: ''
  type: long[]
  inputBinding:
    prefix: -f
- id: in_promoter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- batchFindMotifs.pl
