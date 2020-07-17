class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmqridx.cwl
inputs:
- id: _quiet_quiet
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
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
- id: _print_list
  doc: --print       list contents of database index file
  type: boolean
  inputBinding:
    prefix: -p
- id: _set_instance
  doc: --not-new     set instance reviewed status to 'not new'
  type: boolean
  inputBinding:
    prefix: -n
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmqridx
