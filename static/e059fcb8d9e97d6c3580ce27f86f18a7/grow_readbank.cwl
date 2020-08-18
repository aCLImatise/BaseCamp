class: CommandLineTool
id: ../../../grow_readbank.cwl
inputs:
- id: create_new_bank
  doc: Create a new read bank
  type: boolean
  inputBinding:
    prefix: -c
- id: input_celera_msg
  doc: Input is Celera msg format, i.e., a .frg file
  type: boolean
  inputBinding:
    prefix: -C
- id: force_new_read
  doc: Force new read bank by deleting existing one first
  type: boolean
  inputBinding:
    prefix: -f
- id: compress_reads_bank
  doc: Compress reads in the Bank, only allows chars ACGTN
  type: boolean
  inputBinding:
    prefix: -s
- id: grow_read_bank
  doc: <bank-name> <input-file[s]>
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- grow-readbank
