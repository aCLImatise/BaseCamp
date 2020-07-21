class: CommandLineTool
id: ../../../esl_translate.cwl
inputs:
- id: use_alt_code
  doc: ': use alt genetic code of NCBI transl table <n>  [1]'
  type: string
  inputBinding:
    prefix: -c
- id: minimum_orf_length
  doc: ': minimum ORF length  [20]'
  type: string
  inputBinding:
    prefix: -l
- id: orfs_must_initiate
  doc: ': ORFs must initiate with AUG only'
  type: boolean
  inputBinding:
    prefix: -m
- id: orfs_must_start
  doc: ': ORFs must start with allowed initiation codon'
  type: boolean
  inputBinding:
    prefix: -M
- id: use_windowed_reading
  doc: ': use windowed, memory-efficient seq reading'
  type: boolean
  inputBinding:
    prefix: -W
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: watson
  doc: ': only translate top strand'
  type: boolean
  inputBinding:
    prefix: --watson
- id: crick
  doc: ': only translate bottom strand'
  type: boolean
  inputBinding:
    prefix: --crick
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-translate
