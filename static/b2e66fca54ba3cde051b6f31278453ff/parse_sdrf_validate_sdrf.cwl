class: CommandLineTool
id: parse_sdrf_validate_sdrf.cwl
inputs:
- id: in_sd_rf_file
  doc: SDRF file to be validated
  type: File?
  inputBinding:
    prefix: --sdrf_file
- id: in_template
  doc: "[default|human|vertebrates|nonvertebrates|plants|cell_lines]\nselect the template\
    \ that will be use to\nvalidate the file (default: default)"
  type: boolean?
  inputBinding:
    prefix: --template
- id: in_check_ms
  doc: "check mass spectrometry fields in SDRF (e.g.\npostranslational modifications)"
  type: boolean?
  inputBinding:
    prefix: --check_ms
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sdrf-pipelines:0.0.13--py_0
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- validate-sdrf
