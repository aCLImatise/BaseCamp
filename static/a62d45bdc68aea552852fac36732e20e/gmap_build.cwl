class: CommandLineTool
id: gmap_build.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n_messages
  doc: Maximum number of messages (warnings, contig reports) to report (default 50)
  type: long
  inputBinding:
    prefix: --nmessages
outputs: []
cwlVersion: v1.1
baseCommand:
- gmap_build
