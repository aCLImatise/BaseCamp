class: CommandLineTool
id: bank_transact.cwl
inputs:
- id: in_directory_path_open
  doc: The directory path of the banks to open or create
  type: File?
  inputBinding:
    prefix: -b
- id: in_create_new_directory
  doc: Create new bank directory if path does not exist
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_forcibly_create_bank
  doc: Forcibly create new bank by destroying existing
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_file_path_input
  doc: The file path of the input message
  type: File?
  inputBinding:
    prefix: -m
- id: in_compress_sequence_values
  doc: "Compress sequence and quality values for SEQ and RED\n(only allows [ACGTN]\
    \ sequence and [0,63] quality)"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_bank_transact
  doc: '[options]  -b <bank path> -m <message path>'
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
- bank-transact
