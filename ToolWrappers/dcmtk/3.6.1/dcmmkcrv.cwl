class: CommandLineTool
id: dcmmkcrv.cwl
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
- id: in_ll
  doc: "--log-level    [l]evel: string constant\n(fatal, error, warn, info, debug,\
    \ trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config   [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__poly_create
  doc: --poly         create as POLY curve (default)
  type: boolean
  inputBinding:
    prefix: -r
- id: in__curvevr_umber
  doc: "--curve-vr     [n]umber: integer 0..2 (default: 0)\nselect VR with which the\
    \ Curve Data element is written\n0=VR according to --data-vr, 1=OB, 2=OW"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__group_umber
  doc: "--group        [n]umber: integer 0..15 (default: 0)\nselect repeating group:\
    \ 0=0x5000, 1=0x5002 etc."
  type: boolean
  inputBinding:
    prefix: -g
- id: in__label_label
  doc: "--label        s: string\nset Curve Label to s (default: absent)"
  type: boolean
  inputBinding:
    prefix: -l
- id: in__axis_string
  doc: "--axis         x: string, y: string\nset Axis Units to x\\y (default: absent)\n"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_dcm_file_in
  doc: DICOM input image file
  type: string
  inputBinding:
    position: 0
- id: in_curve_data_in
  doc: curve data input file (text)
  type: string
  inputBinding:
    position: 1
- id: in_dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 2
- id: in_string
  doc: 'set Curve Description to s (default: absent)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmmkcrv
