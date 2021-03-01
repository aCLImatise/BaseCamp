class: CommandLineTool
id: orderchr.cwl
inputs:
- id: in_links
  doc: ''
  type: File?
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orderchr
