class: CommandLineTool
id: add_gff_info_coverage_OPTIONS_OUTPUT_FILE.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- coverage
- OPTIONS
- OUTPUT_FILE
