class: CommandLineTool
id: dcmqridx.cwl
inputs:
- id: index_out
  doc: storage area for the index file (directory)
  type: string
  inputBinding:
    position: 0
- id: dcm_file_in
  doc: DICOM image file to be registered in the index file
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: log_level
  doc: '[l]evel: string constant (fatal, error, warn, info, debug, trace) use level
    l for the logger'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_config
  doc: '[f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: --log-config
- id: p
  doc: --print       list contents of database index file
  type: boolean
  inputBinding:
    prefix: -p
- id: n
  doc: --not-new     set instance reviewed status to 'not new'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmqridx
