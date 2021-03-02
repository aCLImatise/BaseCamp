class: CommandLineTool
id: summarize_gmap_sam.py.cwl
inputs:
- id: in_summarize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gmap
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_tab_delimited
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file_dot
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- summarize_gmap_sam.py
