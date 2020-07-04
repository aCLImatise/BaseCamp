class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/make_tracks_file.cwl
inputs:
- id: track_files
  doc: 'Files to use in for the tracks. The ending of the file is used to define the
    type of track. E.g. `.bw` for bigwig, `.bed` for bed etc. For a arcs or links
    file, the file ending recognized is `.arcs` or `.links` (default: None)'
  type: string[]
  inputBinding:
    prefix: --trackFiles
- id: out
  doc: 'file, -o output file File to save the tracks (default: None)'
  type: string
  inputBinding:
    prefix: --out
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: etc_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- make_tracks_file
