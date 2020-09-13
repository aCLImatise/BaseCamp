class: CommandLineTool
id: ../../../esd2esi.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_dataset
  doc: ''
  type: File
  inputBinding:
    prefix: --dataset
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: --output
- id: in_translate
  doc: ''
  type: boolean
  inputBinding:
    prefix: --translate
- id: in_dna_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --dnawordlen
- id: in_protein_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinwordlen
- id: in_word_jump
  doc: ''
  type: boolean
  inputBinding:
    prefix: --wordjump
- id: in_word_ambiguity
  doc: ''
  type: boolean
  inputBinding:
    prefix: --wordambiguity
- id: in_saturate_threshold
  doc: ''
  type: boolean
  inputBinding:
    prefix: --saturatethreshold
- id: in_memory_limit
  doc: ''
  type: boolean
  inputBinding:
    prefix: --memorylimit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esd2esi
