class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_region_list_to_bed.cwl
inputs:
- id: chromosome_name
  doc: Chromosome name to use in BED
  type: string
  inputBinding:
    prefix: --chromosome_name
outputs: []
cwlVersion: v1.1
baseCommand:
- tb_region_list_to_bed
