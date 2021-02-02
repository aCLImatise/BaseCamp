class: CommandLineTool
id: batchFindMotifsGenome.pl.cwl
inputs:
- id: in_dist
  doc: <#> (Will only analyze promoter-distal regions ># away from TSS)
  type: boolean
  inputBinding:
    prefix: -dist
- id: in_cpu
  doc: (# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- batchFindMotifsGenome.pl
