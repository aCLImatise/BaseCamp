class: CommandLineTool
id: addrg.cwl
inputs:
- id: in_file_dot_bam
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_rg_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- addrg
