class: CommandLineTool
id: bank_transact.cwl
inputs:
- id: bank_transact
  doc: '[options]  -b <bank path> -m <message path>'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: The directory path of the banks to open or create
  type: File
  inputBinding:
    prefix: -b
- id: c
  doc: Create new bank directory if path does not exist
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: Forcibly create new bank by destroying existing
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: The file path of the input message
  type: File
  inputBinding:
    prefix: -m
- id: z
  doc: Compress sequence and quality values for SEQ and RED (only allows [ACGTN] sequence
    and [0,63] quality)
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-transact
