class: CommandLineTool
id: genomedata_load_data.cwl
inputs:
- id: in_verbose
  doc: Print status and diagnostic messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_option_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_genome_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_track_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genomedata-load-data
