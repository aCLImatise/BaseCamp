class: CommandLineTool
id: ../../../bank_mapping.cwl
inputs:
- id: directory_path_report
  doc: The directory path of the bank to report
  type: File
  inputBinding:
    prefix: -b
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: bank_mapping
  doc: '[options]  -b <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-mapping
