class: CommandLineTool
id: ../../../esl_translate.cwl
inputs:
- id: in_use_alt_code
  doc: ': use alt genetic code of NCBI transl table <n>  [1]'
  type: long
  inputBinding:
    prefix: -c
- id: in_minimum_orf_length
  doc: ': minimum ORF length  [20]'
  type: long
  inputBinding:
    prefix: -l
- id: in_orfs_must_initiate
  doc: ': ORFs must initiate with AUG only'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_orfs_must_start
  doc: ': ORFs must start with allowed initiation codon'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_use_windowed_reading
  doc: ': use windowed, memory-efficient seq reading'
  type: boolean
  inputBinding:
    prefix: -W
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_watson
  doc: ': only translate top strand'
  type: boolean
  inputBinding:
    prefix: --watson
- id: in_crick
  doc: ': only translate bottom strand'
  type: boolean
  inputBinding:
    prefix: --crick
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-translate
