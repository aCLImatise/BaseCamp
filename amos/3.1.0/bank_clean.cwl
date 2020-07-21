class: CommandLineTool
id: ../../../bank_clean.cwl
inputs:
- id: directory_path_clean
  doc: The directory path of the bank to clean
  type: File
  inputBinding:
    prefix: -b
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: bank_clean
  doc: '[options]  <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-clean
