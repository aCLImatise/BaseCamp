class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmconv.cwl
inputs:
- id: _quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level            [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config           [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: _readdataset_read
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: _readxferauto_use
  doc: =  --read-xfer-auto       use TS recognition (default)
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
- id: ignore_meta_length
  doc: ignore file meta information group length
  type: boolean
  inputBinding:
    prefix: --ignore-meta-length
- id: ignore_explicit_vr
  doc: ignore explicit VR (prefer data dictionary)
  type: boolean
  inputBinding:
    prefix: --ignore-explicit-vr
- id: assume_implicit
  doc: try to read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --assume-implicit
- id: disable_cp_two_four_six
  doc: read undefined len UN as explicit VR
  type: boolean
  inputBinding:
    prefix: --disable-cp246
- id: handle_parse_errors
  doc: handle parse errors and stop parsing (default)
  type: boolean
  inputBinding:
    prefix: --handle-parse-errors
- id: disable_correction
  doc: disable automatic data correction
  type: boolean
  inputBinding:
    prefix: --disable-correction
- id: transliterate
  doc: try to approximate characters that cannot be represented through similar looking
    characters
  type: boolean
  inputBinding:
    prefix: --transliterate
- id: discard_illegal
  doc: discard characters that cannot be represented in destination character set
  type: boolean
  inputBinding:
    prefix: --discard-illegal
- id: no_invalid_groups
  doc: remove elements with invalid group number
  type: boolean
  inputBinding:
    prefix: --no-invalid-groups
- id: _writedataset_write
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: _disablenewvr_disable
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: _grouplengthremove_always
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: abort_oversized
  doc: abort on oversized explicit sequences/items
  type: boolean
  inputBinding:
    prefix: --abort-oversized
- id: dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmconv
