class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bank_transact.cwl
inputs:
- id: directory_path_open
  doc: The directory path of the banks to open or create
  type: File
  inputBinding:
    prefix: -b
- id: create_new_directory
  doc: Create new bank directory if path does not exist
  type: boolean
  inputBinding:
    prefix: -c
- id: forcibly_create_bank
  doc: Forcibly create new bank by destroying existing
  type: boolean
  inputBinding:
    prefix: -f
- id: file_path_input
  doc: The file path of the input message
  type: File
  inputBinding:
    prefix: -m
- id: compress_sequence_values
  doc: Compress sequence and quality values for SEQ and RED (only allows [ACGTN] sequence
    and [0,63] quality)
  type: boolean
  inputBinding:
    prefix: -z
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: bank_transact
  doc: '[options]  -b <bank path> -m <message path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-transact
