class: CommandLineTool
id: dcmmkcrv.cwl
inputs:
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
- id: c
  doc: '--curve-vr     [n]umber: integer 0..2 (default: 0) select VR with which the
    Curve Data element is written 0=VR according to --data-vr, 1=OB, 2=OW'
  type: boolean
  inputBinding:
    prefix: -c
- id: g
  doc: '--group        [n]umber: integer 0..15 (default: 0) select repeating group:
    0=0x5000, 1=0x5002 etc.'
  type: boolean
  inputBinding:
    prefix: -g
- id: a
  doc: '--axis         x: string, y: string set Axis Units to x\y (default: absent)'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmmkcrv
