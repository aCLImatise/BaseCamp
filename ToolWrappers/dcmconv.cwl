class: CommandLineTool
id: dcmconv.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level            [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config           [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readxferauto_use
  doc: =  --read-xfer-auto       use TS recognition (default)
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
- id: in_ignore_meta_length
  doc: ignore file meta information group length
  type: boolean
  inputBinding:
    prefix: --ignore-meta-length
- id: in_ignore_explicit_vr
  doc: ignore explicit VR (prefer data dictionary)
  type: boolean
  inputBinding:
    prefix: --ignore-explicit-vr
- id: in_assume_implicit
  doc: try to read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --assume-implicit
- id: in_disable_cp_two_four_six
  doc: read undefined len UN as explicit VR
  type: boolean
  inputBinding:
    prefix: --disable-cp246
- id: in_retain_un
  doc: retain elements as UN (default)
  type: boolean
  inputBinding:
    prefix: --retain-un
- id: in_maxlength_dict
  doc: read as defined in dictionary (default)
  type: boolean
  inputBinding:
    prefix: --maxlength-dict
- id: in_use_delim_items
  doc: use delimitation items from dataset (default)
  type: boolean
  inputBinding:
    prefix: --use-delim-items
- id: in_handle_parse_errors
  doc: handle parse errors and stop parsing (default)
  type: boolean
  inputBinding:
    prefix: --handle-parse-errors
- id: in_disable_correction
  doc: disable automatic data correction
  type: boolean
  inputBinding:
    prefix: --disable-correction
- id: in_transliterate
  doc: "try to approximate characters that cannot be\nrepresented through similar\
    \ looking characters"
  type: boolean
  inputBinding:
    prefix: --transliterate
- id: in_discard_illegal
  doc: "discard characters that cannot be represented\nin destination character set"
  type: boolean
  inputBinding:
    prefix: --discard-illegal
- id: in_no_invalid_groups
  doc: remove elements with invalid group number
  type: boolean
  inputBinding:
    prefix: --no-invalid-groups
- id: in__writedataset_write
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: in__disablenewvr_disable
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__grouplengthremove_always
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: in__lengthundefined_write
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in_abort_oversized
  doc: abort on oversized explicit sequences/items
  type: boolean
  inputBinding:
    prefix: --abort-oversized
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
cwlVersion: v1.1
baseCommand:
- dcmconv
