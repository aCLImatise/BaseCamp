class: CommandLineTool
id: dcmgpdir.cwl
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
- id: in_keep_filenames
  doc: expect filenames to be in DICOM format (def.)
  type: boolean?
  inputBinding:
    prefix: --keep-filenames
- id: in_no_recurse
  doc: do not recurse within directories (default)
  type: boolean?
  inputBinding:
    prefix: --no-recurse
- id: in_no_consistency_check
  doc: do not check files for consistency
  type: boolean?
  inputBinding:
    prefix: --no-consistency-check
- id: in_abort_in_consist_file
  doc: abort on first inconsistent file
  type: boolean?
  inputBinding:
    prefix: --abort-inconsist-file
- id: in_strict
  doc: "exit with error if DICOMDIR type 1 attributes\nare missing in DICOM file (default)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_no_xfer_check
  doc: "do not reject images with non-standard\ntransfer syntax (just warn)"
  type: boolean?
  inputBinding:
    prefix: --no-xfer-check
- id: in_replace
  doc: replace existing DICOMDIR (default)
  type: boolean?
  inputBinding:
    prefix: --replace
- id: in_discard
  doc: do not write out DICOMDIR
  type: boolean?
  inputBinding:
    prefix: --discard
- id: in_create_backup
  doc: create a backup of existing DICOMDIR (def.)
  type: boolean?
  inputBinding:
    prefix: --create-backup
- id: in_no_backup
  doc: do not create a backup of existing DICOMDIR
  type: boolean?
  inputBinding:
    prefix: --no-backup
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: write without group length elements (default)
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_dcm_file_in
  doc: ref. DICOM file (or directory to be scanned)
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
- dcmgpdir
