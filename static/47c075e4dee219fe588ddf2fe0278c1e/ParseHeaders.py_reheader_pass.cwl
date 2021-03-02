class: CommandLineTool
id: ParseHeaders.py_reheader_pass.cwl
inputs:
- id: in_parse_headers_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- ParseHeaders.py
- reheader-pass
