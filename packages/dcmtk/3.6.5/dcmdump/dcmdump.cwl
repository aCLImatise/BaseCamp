class: CommandLineTool
id: dcmdump.cwl
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
- id: in_no_recurse
  doc: do not recurse within directories (default)
  type: boolean?
  inputBinding:
    prefix: --no-recurse
- id: in_load_short
  doc: do not load very long values (e.g. pixel data)
  type: boolean?
  inputBinding:
    prefix: --load-short
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
- id: in_illegal_o_bow_rej
  doc: reject dataset with illegal element (default)
  type: boolean?
  inputBinding:
    prefix: --illegal-obow-rej
- id: in_illegal_voi_rej
  doc: reject dataset with illegal VOI LUT (default)
  type: boolean?
  inputBinding:
    prefix: --illegal-voi-rej
- id: in_abort_expl_pix_data
  doc: abort on explicit length pixel data (default)
  type: boolean?
  inputBinding:
    prefix: --abort-expl-pixdata
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
- id: in_print_short
  doc: print long tag values shortened (default)
  type: boolean?
  inputBinding:
    prefix: --print-short
- id: in_print_indented
  doc: print hierarchical structure indented (default)
  type: boolean?
  inputBinding:
    prefix: --print-indented
- id: in_no_uid_names
  doc: do not map well-known UID numbers to names
  type: boolean?
  inputBinding:
    prefix: --no-uid-names
- id: in_print_non_ascii
  doc: print non-ASCII and control chars (default)
  type: boolean?
  inputBinding:
    prefix: --print-nonascii
- id: in_no_color
  doc: do not use any ANSI escape codes (default)
  type: boolean?
  inputBinding:
    prefix: --no-color
- id: in_stop_on_error
  doc: do not print if file is damaged (default)
  type: boolean?
  inputBinding:
    prefix: --stop-on-error
- id: in_search_first
  doc: only print first instance of searched tags
  type: boolean?
  inputBinding:
    prefix: --search-first
- id: in_no_prepend
  doc: do not prepend hierarchy to tag (default)
  type: boolean?
  inputBinding:
    prefix: --no-prepend
- id: in_dcm_file_in
  doc: DICOM input file or directory to be dumped
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmdump
