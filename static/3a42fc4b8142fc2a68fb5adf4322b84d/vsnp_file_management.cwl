class: CommandLineTool
id: ../../../vsnp_file_management.py.cwl
inputs:
- id: codes
  doc: 'Excel file containing genotype code Column 1: to match sample name minus everything
    left of first occurring _ or . Column 2: New name'
  type: string
  inputBinding:
    prefix: --codes
- id: extension
  doc: File extension type to be renamed
  type: string
  inputBinding:
    prefix: --extension
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_file_management.py
