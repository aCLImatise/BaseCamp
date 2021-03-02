class: CommandLineTool
id: cnv_annotate.py_cnv_file.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_cnv_annotated_otp_y
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cnv_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnv_annotate.py
- cnv_file
