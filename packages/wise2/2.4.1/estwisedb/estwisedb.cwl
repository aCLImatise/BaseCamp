class: CommandLineTool
id: estwisedb.cwl
inputs:
- id: in_dna
  doc: '[-tfor]'
  type: string
  inputBinding:
    position: 0
- id: in_model
  doc: '[-codon,-subs,-indel,-null]'
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: '[-pretty,-alb,-pal,-block,-divide]'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- estwisedb
