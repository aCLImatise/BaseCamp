class: CommandLineTool
id: esl_translate.cwl
inputs:
- id: c
  doc: ': use alt genetic code of NCBI transl table <n>  [1]'
  type: string
  inputBinding:
    prefix: -c
- id: l
  doc: ': minimum ORF length  [20]'
  type: string
  inputBinding:
    prefix: -l
- id: m
  doc: ': ORFs must initiate with AUG only'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: ': ORFs must start with allowed initiation codon'
  type: boolean
  inputBinding:
    prefix: -M
- id: w
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
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-translate
