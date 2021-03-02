class: CommandLineTool
id: dcmsign.cwl
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
- id: in_read_dataset
  doc: read data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --read-dataset
- id: in__readxferauto_use
  doc: =   --read-xfer-auto       use TS recognition (default)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean?
  inputBinding:
    prefix: --read-xfer-detect
- id: in_read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-little
- id: in_read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-big
- id: in_read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-implicit
- id: in_verify
  doc: verify all signatures (default)
  type: boolean?
  inputBinding:
    prefix: --verify
- id: in_null_passwd
  doc: use empty string as password
  type: boolean?
  inputBinding:
    prefix: --null-passwd
- id: in_pem_keys
  doc: read keys/certificates as PEM file (default)
  type: boolean?
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys/certificates as DER file
  type: boolean?
  inputBinding:
    prefix: --der-keys
- id: in_profile_none
  doc: don't enforce any signature profile (default)
  type: boolean?
  inputBinding:
    prefix: --profile-none
- id: in_tag
  doc: "[t]ag: \"gggg,eeee\" or dictionary name\nsign only specified tag\n(this option\
    \ can be specified multiple times)"
  type: boolean?
  inputBinding:
    prefix: --tag
- id: in_tag_file
  doc: "[f]ilename: string\nread list of tags from text file"
  type: boolean?
  inputBinding:
    prefix: --tag-file
- id: in_format_new
  doc: use correct DICOM signature format (default)
  type: boolean?
  inputBinding:
    prefix: --format-new
- id: in_format_old
  doc: "use old (pre-3.5.4) DCMTK signature format,\nnon-conformant if signature includes\n\
    compressed pixel data"
  type: boolean?
  inputBinding:
    prefix: --format-old
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_dcm_file_in
  doc: DICOM input filename to be processed
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
- id: in_string
  doc: use specified password
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
- dcmsign
