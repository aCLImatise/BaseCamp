class: CommandLineTool
id: piler.cwl
inputs:
- id: in_trs
  doc: ":\n-mincover <n>\n-maxlengthdiffpct <n>\n-piles <pilefile>\n-images <imagefile>\n\
    -multihit"
  type: string?
  inputBinding:
    prefix: -trs
- id: in_rep
  doc: ''
  type: File?
  inputBinding:
    prefix: -rep
- id: in_an_not
  doc: ''
  type: string?
  inputBinding:
    prefix: -annot
- id: in_out
  doc: ''
  type: File?
  inputBinding:
    prefix: -out
- id: in_cons
  doc: ''
  type: File?
  inputBinding:
    prefix: -cons
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    prefix: -path
- id: in_seq
  doc: ''
  type: File?
  inputBinding:
    prefix: -seq
- id: in_trs_two_fast_a
  doc: ''
  type: File?
  inputBinding:
    prefix: -trs2fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- piler
