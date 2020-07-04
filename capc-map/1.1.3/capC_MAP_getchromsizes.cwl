class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/capC_MAP_getchromsizes.cwl
inputs:
- id: bed_file_continaing
  doc: bed file continaing list of restriction enzyme fragments for genome
  type: string
  inputBinding:
    prefix: -f
- id: output_file_name
  doc: 'output file name (Default: chrom.sizes)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- getchromsizes
