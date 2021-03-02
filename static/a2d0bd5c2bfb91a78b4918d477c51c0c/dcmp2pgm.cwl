class: CommandLineTool
id: dcmp2pgm.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_p_state
  doc: "[f]ilename: string\nprocess using presentation state file"
  type: boolean?
  inputBinding:
    prefix: --pstate
- id: in_config
  doc: "[f]ilename: string\nprocess using settings from configuration file"
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_frame
  doc: "[f]rame: integer\nprocess using image frame f (default: 1)"
  type: boolean?
  inputBinding:
    prefix: --frame
- id: in_pgm
  doc: save image as PGM (default)
  type: boolean?
  inputBinding:
    prefix: --pgm
- id: in_dcm_file_in
  doc: input DICOM image
  type: string
  inputBinding:
    position: 0
- id: in_bitmap_out
  doc: output DICOM image or PGM bitmap
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dcmp2pgm
