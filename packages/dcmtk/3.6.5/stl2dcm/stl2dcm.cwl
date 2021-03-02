class: CommandLineTool
id: stl2dcm.cwl
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
- id: in_annotation_no
  doc: document does not contain patient identif. data
  type: boolean?
  inputBinding:
    prefix: --annotation-no
- id: in_key
  doc: "[k]ey: gggg,eeee=\"str\", path or dict. name=\"str\"\nadd further attribute"
  type: boolean?
  inputBinding:
    prefix: --key
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
- id: in_stl_file_in
  doc: STL input filename to be converted
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
- stl2dcm
