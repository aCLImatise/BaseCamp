class: CommandLineTool
id: esl_mask.cwl
inputs:
- id: o
  doc: ': output masked sequences to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: ': reverse: mask exclusive of <start>..<end>, not inclusive'
  type: boolean
  inputBinding:
    prefix: -r
- id: r
  doc: ': random access: fetch seqs from ssi-indexed <sqfile>'
  type: boolean
  inputBinding:
    prefix: -R
- id: l
  doc: ': convert masked residues to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: ': convert masked residues to character <c>'
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: ': mask additional <n> residues beyond <start>,<end>'
  type: string
  inputBinding:
    prefix: -x
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mask
