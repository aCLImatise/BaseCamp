class: CommandLineTool
id: dsr2xml.cwl
inputs:
- id: dsr_file_in
  doc: DICOM SR input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: xml_file_out
  doc: 'XML output filename (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level             [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config            [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: f
  doc: --read-dataset          read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: =  --read-xfer-auto        use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: --read-xfer-detect
- id: read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-little
- id: read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-big
- id: read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-implicit
- id: unknown_relationship
  doc: accept unknown/missing relationship type
  type: boolean
  inputBinding:
    prefix: --unknown-relationship
- id: invalid_item_value
  doc: accept invalid content item value (e.g. violation of VR or VM definition)
  type: boolean
  inputBinding:
    prefix: --invalid-item-value
- id: ignore_constraints
  doc: ignore relationship content constraints
  type: boolean
  inputBinding:
    prefix: --ignore-constraints
- id: ignore_item_errors
  doc: do not abort on content item errors, just warn (e.g. missing value type specific
    attributes)
  type: boolean
  inputBinding:
    prefix: --ignore-item-errors
- id: skip_invalid_items
  doc: skip invalid content items (incl. sub-tree)
  type: boolean
  inputBinding:
    prefix: --skip-invalid-items
- id: disable_vr_checker
  doc: disable check for VR-conformant string values
  type: boolean
  inputBinding:
    prefix: --disable-vr-checker
outputs: []
cwlVersion: v1.1
baseCommand:
- dsr2xml
