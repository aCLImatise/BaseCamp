class: CommandLineTool
id: parse_sdrf_validate_sdrf.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sd_rf_file
  doc: SDRF file to be validated
  type: string
  inputBinding:
    prefix: --sdrf_file
- id: template
  doc: '[default|human|vertebrates|nonvertebrates|plants|cell_lines] select the template
    that will be use to validate the file (default: default)'
  type: boolean
  inputBinding:
    prefix: --template
- id: check_ms
  doc: check mass spectrometry fields in SDRF (e.g. postranslational modifications)
  type: boolean
  inputBinding:
    prefix: --check_ms
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- validate-sdrf
