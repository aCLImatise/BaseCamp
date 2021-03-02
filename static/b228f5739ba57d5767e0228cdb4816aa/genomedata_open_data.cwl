class: CommandLineTool
id: genomedata_open_data.cwl
inputs:
- id: in_track_names
  doc: tracknames to open
  type: string[]
  inputBinding:
    prefix: --tracknames
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genomedata-open-data
