class: CommandLineTool
id: filterCNV.cwl
inputs:
- id: in_cnv_region_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_count_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chrom_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filterCNV
