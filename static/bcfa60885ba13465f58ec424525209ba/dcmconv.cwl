class: CommandLineTool
id: dcmconv.cwl
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
  doc: =  --read-xfer-auto       use TS recognition (default)
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
- id: in_ignore_meta_length
  doc: ignore file meta information group length
  type: boolean?
  inputBinding:
    prefix: --ignore-meta-length
- id: in_ignore_explicit_vr
  doc: ignore explicit VR (prefer data dictionary)
  type: boolean?
  inputBinding:
    prefix: --ignore-explicit-vr
- id: in_assume_implicit
  doc: try to read with implicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --assume-implicit
- id: in_disable_cp_two_four_six
  doc: read undefined len UN as explicit VR
  type: boolean?
  inputBinding:
    prefix: --disable-cp246
- id: in_retain_un
  doc: retain elements as UN (default)
  type: boolean?
  inputBinding:
    prefix: --retain-un
- id: in_maxlength_dict
  doc: read as defined in dictionary (default)
  type: boolean?
  inputBinding:
    prefix: --maxlength-dict
- id: in_use_delim_items
  doc: use delimitation items from dataset (default)
  type: boolean?
  inputBinding:
    prefix: --use-delim-items
- id: in_handle_parse_errors
  doc: handle parse errors and stop parsing (default)
  type: boolean?
  inputBinding:
    prefix: --handle-parse-errors
- id: in_disable_correction
  doc: disable automatic data correction
  type: boolean?
  inputBinding:
    prefix: --disable-correction
- id: in_transliterate
  doc: "try to approximate characters that cannot be\nrepresented through similar\
    \ looking characters"
  type: boolean?
  inputBinding:
    prefix: --transliterate
- id: in_discard_illegal
  doc: "discard characters that cannot be represented\nin destination character set"
  type: boolean?
  inputBinding:
    prefix: --discard-illegal
- id: in_no_invalid_groups
  doc: remove elements with invalid group number
  type: boolean?
  inputBinding:
    prefix: --no-invalid-groups
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: always write without group length elements
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_abort_oversized
  doc: abort on oversized explicit sequences/items
  type: boolean?
  inputBinding:
    prefix: --abort-oversized
- id: in__paddingretain_change
  doc: "=  --padding-retain       do not change padding\n(default if not --write-dataset)"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_padding_off
  doc: no padding (implicit if --write-dataset)
  type: boolean?
  inputBinding:
    prefix: --padding-off
- id: in_dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dcmconv
