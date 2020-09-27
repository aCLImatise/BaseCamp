class: CommandLineTool
id: dcmp2pgm.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet        quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose      verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug        debug mode, print debug information
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
- id: in__pstate_stringprocess
  doc: "--pstate       [f]ilename: string\nprocess using presentation state file"
  type: boolean
  inputBinding:
    prefix: -p
- id: in__config_ilename
  doc: "--config       [f]ilename: string\nprocess using settings from configuration\
    \ file"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__frame_integerprocess
  doc: "--frame        [f]rame: integer\nprocess using image frame f (default: 1)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__pgm_save
  doc: --pgm          save image as PGM (default)
  type: boolean
  inputBinding:
    prefix: -D
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
cwlVersion: v1.1
baseCommand:
- dcmp2pgm
