class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmmkcrv.cwl
inputs:
- id: _quiet_quiet
  doc: --quiet        quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose      verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
  doc: --debug        debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level    [l]evel: string constant (fatal, error, warn, info, debug,
    trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config   [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: _curvevr_umber
  doc: '--curve-vr     [n]umber: integer 0..2 (default: 0) select VR with which the
    Curve Data element is written 0=VR according to --data-vr, 1=OB, 2=OW'
  type: boolean
  inputBinding:
    prefix: -c
- id: _group_integer
  doc: '--group        [n]umber: integer 0..15 (default: 0) select repeating group:
    0=0x5000, 1=0x5002 etc.'
  type: boolean
  inputBinding:
    prefix: -g
- id: _axis_string
  doc: '--axis         x: string, y: string set Axis Units to x\y (default: absent)'
  type: boolean
  inputBinding:
    prefix: -a
- id: dcm_file_in
  doc: DICOM input image file
  type: string
  inputBinding:
    position: 0
- id: curve_data_in
  doc: curve data input file (text)
  type: string
  inputBinding:
    position: 1
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmmkcrv
