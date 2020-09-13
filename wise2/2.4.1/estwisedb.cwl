class: CommandLineTool
id: ../../../estwisedb.cwl
inputs:
- id: in_dna
  doc: '[-tfor]'
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
  doc: '[-kbyte,-alg,-aalg,-aln,-noh]'
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: '[-pretty,-alb,-pal,-block,-divide]'
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- estwisedb
