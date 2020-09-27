class: CommandLineTool
id: dcmqridx.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: --log-config
- id: in__print_list
  doc: --print       list contents of database index file
  type: boolean
  inputBinding:
    prefix: -p
- id: in__notnew_set
  doc: --not-new     set instance reviewed status to 'not new'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_index_out
  doc: storage area for the index file (directory)
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_in
  doc: DICOM image file to be registered in the index file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmqridx
