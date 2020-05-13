class: CommandLineTool
id: dcmdump.cwl
inputs:
- id: dcm_file_in
  doc: DICOM input file or directory to be dumped
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
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
- id: f
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: t
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
- id: disable_cp246
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
- id: no_uid_names
  doc: do not map well-known UID numbers to names
  type: boolean
  inputBinding:
    prefix: --no-uid-names
- id: print_non_ascii
  doc: print non-ASCII and control chars (default)
  type: boolean
  inputBinding:
    prefix: --print-nonascii
- id: c
  doc: --no-color             do not use any ANSI escape codes (default)
  type: boolean
  inputBinding:
    prefix: -C
- id: p
  doc: --no-prepend           do not prepend hierarchy to tag (default)
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmdump
