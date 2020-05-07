class: CommandLineTool
id: tb_region_list_to_bed.cwl
inputs:
- id: output_file
  doc: File to write output to
  type: string
  inputBinding:
    position: 0
- id: chromosome_name
  doc: Chromosome name to use in BED
  type: string
  inputBinding:
    prefix: --chromosome_name
outputs: []
cwlVersion: v1.1
baseCommand:
- tb_region_list_to_bed
