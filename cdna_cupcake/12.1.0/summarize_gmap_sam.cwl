class: CommandLineTool
id: ../../../summarize_gmap_sam.py.cwl
inputs:
- id: summarize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gmap
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: tab_delimited
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: file_dot
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_gmap_sam.py
