class: CommandLineTool
id: ../../../estwise.cwl
inputs:
- id: in_dna
  doc: '[-u,-v,-trev,-tfor,-both,-tabs]'
  type: string
  inputBinding:
    position: 0
- id: in_protein
  doc: '[-s,-t,-g,-e,-m]'
  type: string
  inputBinding:
    position: 1
- id: in_hmm
  doc: '[-hmmer,-hname]'
  type: string
  inputBinding:
    position: 2
- id: in_model
  doc: '[-codon,-subs,-indel,-null]'
  type: string
  inputBinding:
    position: 3
- id: in_alg
  doc: '[-kbyte,-alg]'
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: '[-pretty,-para,-sum,-alb,-pal,-block,-divide]'
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- estwise
