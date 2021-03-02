class: CommandLineTool
id: vcfplottstv.sh.cwl
inputs:
- id: in_g
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_vcf_two_tsv
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfplottstv.sh
