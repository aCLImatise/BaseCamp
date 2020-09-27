class: CommandLineTool
id: crTreeSearchBed.cwl
inputs:
- id: in_file_dot_bed
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_index_do_tcr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chrom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crTreeSearchBed
