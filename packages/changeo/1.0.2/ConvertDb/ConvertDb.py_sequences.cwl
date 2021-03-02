class: CommandLineTool
id: ConvertDb.py_sequences.cwl
inputs:
- id: in_convert_db_do_tpy
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
  dockerPull: quay.io/biocontainers/changeo:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- ConvertDb.py
- sequences
