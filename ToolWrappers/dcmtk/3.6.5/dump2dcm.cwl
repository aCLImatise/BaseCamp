class: CommandLineTool
id: dump2dcm.cwl
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
- id: in_ignore_meta_info
  doc: ignore file meta information
  type: boolean?
  inputBinding:
    prefix: --ignore-meta-info
- id: in_dont_overwrite_uids
  doc: do not overwrite existing UIDs (default)
  type: boolean?
  inputBinding:
    prefix: --dont-overwrite-uids
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
- id: in_stop_on_error
  doc: do not write if dump is damaged (default)
  type: boolean?
  inputBinding:
    prefix: --stop-on-error
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
- id: in__paddingretain_change
  doc: =  --padding-retain       do not change padding (default)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_padding_off
  doc: no padding (implicit if --write-dataset)
  type: boolean?
  inputBinding:
    prefix: --padding-off
- id: in_dumpfile_in
  doc: dump input filename
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dump2dcm
