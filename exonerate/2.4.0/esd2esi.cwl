class: CommandLineTool
id: esd2esi.cwl
inputs:
- id: translate
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --translate
- id: dna_word_len
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --dnawordlen
- id: protein_word_len
  doc: '[5] '
  type: boolean
  inputBinding:
    prefix: --proteinwordlen
- id: word_jump
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --wordjump
- id: word_ambiguity
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --wordambiguity
- id: saturate_threshold
  doc: '[10] '
  type: boolean
  inputBinding:
    prefix: --saturatethreshold
- id: memory_limit
  doc: '[1024] '
  type: boolean
  inputBinding:
    prefix: --memorylimit
outputs: []
cwlVersion: v1.1
baseCommand:
- esd2esi
