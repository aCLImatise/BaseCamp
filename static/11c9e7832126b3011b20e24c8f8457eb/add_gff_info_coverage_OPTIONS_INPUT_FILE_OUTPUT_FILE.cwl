class: CommandLineTool
id: add_gff_info_coverage_OPTIONS_INPUT_FILE_OUTPUT_FILE.cwl
inputs:
- id: sample_alignment
  doc: sample name and correspondent alignment file separated by comma  [required]
  type: string
  inputBinding:
    prefix: --sample-alignment
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- coverage
- OPTIONS
- INPUT_FILE
- OUTPUT_FILE
