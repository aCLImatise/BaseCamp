class: CommandLineTool
id: ../../../orderchr.cwl
inputs:
- id: in_karyotype
  doc: ''
  type: string
  inputBinding:
    prefix: -karyotype
- id: in_links
  doc: ''
  type: File
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orderchr
