class: CommandLineTool
id: ../../../vsnp_remove_from_analysis.py.cwl
inputs:
- id: codes
  doc: 'Excel file containing samples to remove from analysis Column 1: to match sample
    name minus extension. No header allowed'
  type: string
  inputBinding:
    prefix: --codes
- id: cwd
  doc: 'Optional: path to VCF files'
  type: string
  inputBinding:
    prefix: --cwd
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
- vsnp_remove_from_analysis.py
