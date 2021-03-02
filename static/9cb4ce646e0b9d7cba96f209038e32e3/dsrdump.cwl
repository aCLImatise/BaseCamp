class: CommandLineTool
id: dsrdump.cwl
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
  doc: =   --read-xfer-auto        use TS recognition (default)
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
- id: in_processing_details
  doc: show currently processed content item
  type: boolean?
  inputBinding:
    prefix: --processing-details
- id: in_unknown_relationship
  doc: accept unknown/missing relationship type
  type: boolean?
  inputBinding:
    prefix: --unknown-relationship
- id: in_invalid_item_value
  doc: "accept invalid content item value\n(e.g. violation of VR or VM definition)"
  type: boolean?
  inputBinding:
    prefix: --invalid-item-value
- id: in_ignore_constraints
  doc: ignore relationship content constraints
  type: boolean?
  inputBinding:
    prefix: --ignore-constraints
- id: in_ignore_item_errors
  doc: "do not abort on content item errors, just warn\n(e.g. missing value type specific\
    \ attributes)"
  type: boolean?
  inputBinding:
    prefix: --ignore-item-errors
- id: in_skip_invalid_items
  doc: skip invalid content items (incl. sub-tree)
  type: boolean?
  inputBinding:
    prefix: --skip-invalid-items
- id: in_disable_vr_checker
  doc: disable check for VR-conformant string values
  type: boolean?
  inputBinding:
    prefix: --disable-vr-checker
- id: in_no_document_header
  doc: do not print general document information
  type: boolean?
  inputBinding:
    prefix: --no-document-header
- id: in_indent_nested_items
  doc: indent nested items by spaces (default)
  type: boolean?
  inputBinding:
    prefix: --indent-nested-items
- id: in_shorten_long_values
  doc: print long item values shortened (default)
  type: boolean?
  inputBinding:
    prefix: --shorten-long-values
- id: in_print_sop_class_short
  doc: "print short SOP class name of referenced\nimage objects, e.g. \"CT image\"\
    \ (default)"
  type: boolean?
  inputBinding:
    prefix: --print-sopclass-short
- id: in_no_invalid_codes
  doc: print text "invalid code" instead (default)
  type: boolean?
  inputBinding:
    prefix: --no-invalid-codes
- id: in_no_enhanced_mode
  doc: do not indicate enhanced mode (default)
  type: boolean?
  inputBinding:
    prefix: --no-enhanced-mode
- id: in_no_color
  doc: do not use any ANSI escape codes (default)
  type: boolean?
  inputBinding:
    prefix: --no-color
- id: in_dsr_file_in
  doc: DICOM SR input filename to be dumped
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
- dsrdump
