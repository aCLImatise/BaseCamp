class: CommandLineTool
id: bank_clean.cwl
inputs:
- id: bank_clean
  doc: '[options]  <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: The directory path of the bank to clean
  type: File
  inputBinding:
    prefix: -b
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-clean
