class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnabob.cwl
inputs:
- id: search_strands_database
  doc: ':    search both strands of database'
  type: boolean
  inputBinding:
    prefix: -c
- id: quiet_suppress_verbose
  doc: ':    quiet: suppress verbose banner and headers'
  type: boolean
  inputBinding:
    prefix: -q
- id: skip_disallow_overlapping
  doc: ':    skip mode: disallow overlapping matches'
  type: boolean
  inputBinding:
    prefix: -s
- id: fancy_show_alignments
  doc: ':    fancy: show full alignments to pattern'
  type: boolean
  inputBinding:
    prefix: -F
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: descriptor_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rnabob
