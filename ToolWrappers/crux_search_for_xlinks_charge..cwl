class: CommandLineTool
id: crux_search_for_xlinks_charge..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_search_for_x_links
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ms_two_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- search-for-xlinks
- charge.
