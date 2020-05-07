class: CommandLineTool
id: bank_mapping.cwl
inputs:
- id: bank_mapping
  doc: '[options]  -b <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: The directory path of the bank to report
  type: File
  inputBinding:
    prefix: -b
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-mapping
