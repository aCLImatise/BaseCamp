class: CommandLineTool
id: bank_clean.cwl
inputs:
- id: in_directory_path_clean
  doc: The directory path of the bank to clean
  type: File
  inputBinding:
    prefix: -b
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_bank_clean
  doc: '[options]  <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank-clean
