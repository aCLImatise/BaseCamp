class: CommandLineTool
id: tb_variant_filter_input_file.cwl
inputs:
- id: in_region_filter
  doc: ''
  type: string
  inputBinding:
    prefix: --region_filter
- id: in_tb_variant_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb_variant_filter
- input_file
