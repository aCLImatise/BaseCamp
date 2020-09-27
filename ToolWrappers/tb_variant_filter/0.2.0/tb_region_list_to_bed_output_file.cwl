class: CommandLineTool
id: tb_region_list_to_bed_output_file.cwl
inputs:
- id: in_chromosome_name
  doc: ''
  type: string
  inputBinding:
    prefix: --chromosome_name
- id: in_tb_region_list_to_bed
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
- tb_region_list_to_bed
- output_file
