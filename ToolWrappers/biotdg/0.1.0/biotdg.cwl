class: CommandLineTool
id: biotdg.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    prefix: --vcf
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biotdg
