class: CommandLineTool
id: dcmp2pgm.cwl
inputs:
- id: dcm_file_in
  doc: input DICOM image
  type: string
  inputBinding:
    position: 0
- id: bitmap_out
  doc: output DICOM image or PGM bitmap
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet        quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose      verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug        debug mode, print debug information
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
  doc: '--pstate       [f]ilename: string process using presentation state file'
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: '--config       [f]ilename: string process using settings from configuration
    file'
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: '--frame        [f]rame: integer process using image frame f (default: 1)'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmp2pgm
