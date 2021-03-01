class: CommandLineTool
id: basenji_cmp.py_cmd_dir1.cwl
inputs:
- id: in_basenji_cmp_do_tpy
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
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_cmp.py
- cmd_dir1
