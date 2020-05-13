class: CommandLineTool
id: esl_sfetch.cwl
inputs:
- id: o
  doc: ': output sequences to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: ': output sequence to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: n
  doc: ': rename the sequence <s>'
  type: string
  inputBinding:
    prefix: -n
- id: r
  doc: ': reverse complement the seq(s)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-sfetch
