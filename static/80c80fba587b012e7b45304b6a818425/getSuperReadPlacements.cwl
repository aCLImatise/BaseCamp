class: CommandLineTool
id: getSuperReadPlacements.perl.cwl
inputs:
- id: dir
  doc: input directory
  type: string
  inputBinding:
    prefix: -dir
- id: mina_stat
  doc: (default = 5)
  type: boolean
  inputBinding:
    prefix: -minAStat
- id: min_from_end
  doc: (default = 200) (to avoid edge effects)
  type: boolean
  inputBinding:
    prefix: -minFromEnd
- id: shortest_unit_ig_length
  doc: (default = 2000)
  type: boolean
  inputBinding:
    prefix: -shortestUnitigLength
- id: super_readdir
  doc: (defaults to $dir/work1)
  type: boolean
  inputBinding:
    prefix: -superReadDir
- id: ca_dir
  doc: (defaults to $dir/CA)
  type: boolean
  inputBinding:
    prefix: -CADir
- id: h
  doc: help
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- getSuperReadPlacements.perl
