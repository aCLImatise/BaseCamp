class: CommandLineTool
id: hmmscore.cwl
inputs:
- id: in_db
  doc: '[-db seq_filen]*     one or more sequence files'
  type: File
  inputBinding:
    prefix: -db
- id: in_calibrate
  doc: or calibrate E-values
  type: long
  inputBinding:
    prefix: -calibrate
- id: in_track_prior
  doc: ',<prior2>..   Dirichlets for calibration'
  type: long
  inputBinding:
    prefix: -trackprior
- id: in_track_mod
  doc: ',file2,...         or ....'
  type: File
  inputBinding:
    prefix: -trackmod
- id: in_model_library
  doc: ',...           or ....'
  type: File
  inputBinding:
    prefix: -modellibrary
- id: in_query
  doc: '&W_query_sequence         required ....'
  type: string
  inputBinding:
    prefix: -query
- id: in_option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: in_run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmscore
