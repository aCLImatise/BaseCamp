class: CommandLineTool
id: vsnp_file_management.py.cwl
inputs:
- id: in_codes
  doc: "Excel file containing genotype code Column 1: to match\nsample name minus\
    \ everything left of first occurring _\nor . Column 2: New name"
  type: File?
  inputBinding:
    prefix: --codes
- id: in_extension
  doc: File extension type to be renamed
  type: File?
  inputBinding:
    prefix: --extension
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vsnp_file_management.py
