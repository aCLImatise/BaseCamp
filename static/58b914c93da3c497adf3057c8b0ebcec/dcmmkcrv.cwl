class: CommandLineTool
id: dcmmkcrv.cwl
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
- id: in_poly
  doc: create as POLY curve (default)
  type: boolean?
  inputBinding:
    prefix: --poly
- id: in_curve_vr
  doc: "[n]umber: integer 0..2 (default: 0)\nselect VR with which the Curve Data element\
    \ is written\n0=VR according to --data-vr, 1=OB, 2=OW"
  type: boolean?
  inputBinding:
    prefix: --curve-vr
- id: in_group
  doc: "[n]umber: integer 0..15 (default: 0)\nselect repeating group: 0=0x5000, 1=0x5002\
    \ etc."
  type: boolean?
  inputBinding:
    prefix: --group
- id: in_label
  doc: "s: string\nset Curve Label to s (default: absent)"
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_axis
  doc: "x: string, y: string\nset Axis Units to x\\y (default: absent)\n"
  type: boolean?
  inputBinding:
    prefix: --axis
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
hints: []
cwlVersion: v1.1
baseCommand:
- dcmmkcrv
