class: CommandLineTool
id: rnabob.cwl
inputs:
- id: in_search_strands_database
  doc: ':    search both strands of database'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_quiet_suppress_verbose
  doc: ':    quiet: suppress verbose banner and headers'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_skip_mode_matches
  doc: ':    skip mode: disallow overlapping matches'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fancy_show_alignments
  doc: ':    fancy: show full alignments to pattern'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_descriptor_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnabob
