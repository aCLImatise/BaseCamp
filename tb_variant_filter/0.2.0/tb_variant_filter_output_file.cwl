class: CommandLineTool
id: ../../../tb_variant_filter_output_file.cwl
inputs:
- id: region_filter
  doc: ''
  type: string
  inputBinding:
    prefix: --region_filter
- id: tb_variant_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb_variant_filter
- output_file
