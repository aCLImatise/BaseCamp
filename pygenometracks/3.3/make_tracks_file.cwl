class: CommandLineTool
id: make_tracks_file.cwl
inputs:
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: etc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: track_files
  doc: ''
  type: string
  inputBinding:
    prefix: --trackFiles
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- make_tracks_file
