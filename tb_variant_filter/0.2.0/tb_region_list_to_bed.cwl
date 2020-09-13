class: CommandLineTool
id: ../../../tb_region_list_to_bed.cwl
inputs:
- id: in_chromosome_name
  doc: "Chromosome name to use in BED\n"
  type: string
  inputBinding:
    prefix: --chromosome_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb_region_list_to_bed
