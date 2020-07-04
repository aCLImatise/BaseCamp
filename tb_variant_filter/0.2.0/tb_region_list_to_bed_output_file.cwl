class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_region_list_to_bed_output_file.cwl
inputs:
- id: chromosome_name
  doc: ''
  type: string
  inputBinding:
    prefix: --chromosome_name
- id: tb_region_list_to_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb_region_list_to_bed
- output_file
