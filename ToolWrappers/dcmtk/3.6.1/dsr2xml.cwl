class: CommandLineTool
id: dsr2xml.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level             [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config            [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset          read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readxferauto_use
  doc: =  --read-xfer-auto        use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: --read-xfer-detect
- id: in_read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-little
- id: in_read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-big
- id: in_read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-implicit
- id: in_unknown_relationship
  doc: accept unknown/missing relationship type
  type: boolean
  inputBinding:
    prefix: --unknown-relationship
- id: in_invalid_item_value
  doc: "accept invalid content item value\n(e.g. violation of VR or VM definition)"
  type: boolean
  inputBinding:
    prefix: --invalid-item-value
- id: in_ignore_constraints
  doc: ignore relationship content constraints
  type: boolean
  inputBinding:
    prefix: --ignore-constraints
- id: in_ignore_item_errors
  doc: "do not abort on content item errors, just warn\n(e.g. missing value type specific\
    \ attributes)"
  type: boolean
  inputBinding:
    prefix: --ignore-item-errors
- id: in_skip_invalid_items
  doc: skip invalid content items (incl. sub-tree)
  type: boolean
  inputBinding:
    prefix: --skip-invalid-items
- id: in_disable_vr_checker
  doc: disable check for VR-conformant string values
  type: boolean
  inputBinding:
    prefix: --disable-vr-checker
- id: in_dsr_file_in
  doc: DICOM SR input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: in_xml_file_out
  doc: 'XML output filename (default: stdout)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dsr2xml
