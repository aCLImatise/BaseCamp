class: CommandLineTool
id: iit_dump.cwl
inputs:
- id: in_sort
  doc: Sort results by coordinates
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_tags
  doc: Show tags present in iit file
  type: boolean?
  inputBinding:
    prefix: --tags
- id: in_counts
  doc: Show counts for every boundary in iit file
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_integrate
  doc: Print intervals as integral output
  type: boolean?
  inputBinding:
    prefix: --integrate
- id: in_debug
  doc: Provide debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_an_not_only
  doc: Dump annotation lines only (no headers)
  type: boolean?
  inputBinding:
    prefix: --annotonly
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_i_it_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iit_dump
