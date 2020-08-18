class: CommandLineTool
id: ../../../faRc.cwl
inputs:
- id: keep_name
  doc: "- keep name identical (don't prepend RC)"
  type: boolean
  inputBinding:
    prefix: -keepName
- id: keep_case
  doc: "- works well for ACGTUN in either case. bizarre for other letters. without\
    \ it bases are turned to lower, all else to n's"
  type: boolean
  inputBinding:
    prefix: -keepCase
- id: just_reverse
  doc: '- prepends R unless asked to keep name'
  type: boolean
  inputBinding:
    prefix: -justReverse
- id: just_complement
  doc: '- prepends C unless asked to keep name (cannot appear together with -justReverse)'
  type: boolean
  inputBinding:
    prefix: -justComplement
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faRc
