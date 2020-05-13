class: CommandLineTool
id: grow_readbank.cwl
inputs:
- id: grow_read_bank
  doc: <bank-name> <input-file[s]>
  type: string
  inputBinding:
    position: 0
- id: c
  doc: Create a new read bank
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: Input is Celera msg format, i.e., a .frg file
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: Force new read bank by deleting existing one first
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: Compress reads in the Bank, only allows chars ACGTN
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- grow-readbank
