class: CommandLineTool
id: dcmprscu.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet          quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose        verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug          debug mode, print debug information
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
- id: in_no_print
  doc: do not create print-out (no n-action-rq)
  type: boolean
  inputBinding:
    prefix: --noprint
- id: in_session_print
  doc: send film session n-action-rq (instead of film box)
  type: boolean
  inputBinding:
    prefix: --session-print
- id: in_monochrome_one
  doc: transmit basic grayscale images in MONOCHROME1
  type: boolean
  inputBinding:
    prefix: --monochrome1
- id: in__config_stringprocess
  doc: "--config         [f]ilename: string\nprocess using settings from configuration\
    \ file"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__printer_printer
  doc: "--printer        [n]ame: string (default: 1st printer in cfg file)\nselect\
    \ printer with identifier n from cfg file"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_sleep
  doc: "[d]elay: integer (default: 1)\nsleep d seconds between spooler checks"
  type: boolean
  inputBinding:
    prefix: --sleep
- id: in_copies
  doc: "[v]alue: integer (1..100, default: 1)\nset number of copies to v"
  type: boolean
  inputBinding:
    prefix: --copies
- id: in_medium_type
  doc: "[v]alue: string\nset medium type to v"
  type: boolean
  inputBinding:
    prefix: --medium-type
- id: in_destination
  doc: "[v]alue: string\nset film destination to v"
  type: boolean
  inputBinding:
    prefix: --destination
- id: in_label
  doc: "[v]alue: string\nset film session label to v"
  type: boolean
  inputBinding:
    prefix: --label
- id: in_priority
  doc: "[v]alue: string\nset print priority to v"
  type: boolean
  inputBinding:
    prefix: --priority
- id: in_owner
  doc: "[v]alue: string\nset film session owner ID to v\n"
  type: boolean
  inputBinding:
    prefix: --owner
- id: in_dcm_file_in
  doc: stored print file(s) to be spooled
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmprscu
