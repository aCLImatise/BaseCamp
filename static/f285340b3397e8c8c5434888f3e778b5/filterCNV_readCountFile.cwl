class: CommandLineTool
id: filterCNV_readCountFile.cwl
inputs:
- id: cnv_region_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_count_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- filterCNV
- readCountFile
