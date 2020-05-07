class: CommandLineTool
id: dcmprscu.cwl
inputs:
- id: dcm_file_in
  doc: stored print file(s) to be spooled
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet          quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose        verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug          debug mode, print debug information
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
- id: no_print
  doc: do not create print-out (no n-action-rq)
  type: boolean
  inputBinding:
    prefix: --noprint
- id: session_print
  doc: send film session n-action-rq (instead of film box)
  type: boolean
  inputBinding:
    prefix: --session-print
- id: monochrome_1
  doc: transmit basic grayscale images in MONOCHROME1
  type: boolean
  inputBinding:
    prefix: --monochrome1
- id: sleep
  doc: '[d]elay: integer (default: 1) sleep d seconds between spooler checks'
  type: boolean
  inputBinding:
    prefix: --sleep
- id: copies
  doc: '[v]alue: integer (1..100, default: 1) set number of copies to v'
  type: boolean
  inputBinding:
    prefix: --copies
- id: medium_type
  doc: '[v]alue: string set medium type to v'
  type: boolean
  inputBinding:
    prefix: --medium-type
- id: destination
  doc: '[v]alue: string set film destination to v'
  type: boolean
  inputBinding:
    prefix: --destination
- id: label
  doc: '[v]alue: string set film session label to v'
  type: boolean
  inputBinding:
    prefix: --label
- id: priority
  doc: '[v]alue: string set print priority to v'
  type: boolean
  inputBinding:
    prefix: --priority
- id: owner
  doc: '[v]alue: string set film session owner ID to v'
  type: boolean
  inputBinding:
    prefix: --owner
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmprscu
