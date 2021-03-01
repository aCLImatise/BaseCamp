class: CommandLineTool
id: surpyvor_insseq_vcf.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_verbose
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sur_py_vor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ins_seq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- surpyvor
- insseq
- vcf
