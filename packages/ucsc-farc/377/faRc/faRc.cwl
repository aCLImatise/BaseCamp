class: CommandLineTool
id: faRc.cwl
inputs:
- id: in_keep_name
  doc: "- keep name identical (don't prepend RC)"
  type: boolean
  inputBinding:
    prefix: -keepName
- id: in_keep_case
  doc: "- works well for ACGTUN in either case. bizarre for other letters.\nwithout\
    \ it bases are turned to lower, all else to n's"
  type: boolean
  inputBinding:
    prefix: -keepCase
- id: in_just_reverse
  doc: '- prepends R unless asked to keep name'
  type: boolean
  inputBinding:
    prefix: -justReverse
- id: in_just_complement
  doc: "- prepends C unless asked to keep name\n(cannot appear together with -justReverse)\n"
  type: boolean
  inputBinding:
    prefix: -justComplement
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faRc
