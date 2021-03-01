class: CommandLineTool
id: rbt_vcf_baf.cwl
inputs:
- id: in_rbt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-baf
