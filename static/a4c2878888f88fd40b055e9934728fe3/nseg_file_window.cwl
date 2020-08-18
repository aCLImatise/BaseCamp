class: CommandLineTool
id: ../../../nseg_file_window.cwl
inputs:
- id: lo_cut
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hi_cut
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nseg
- file
- window
