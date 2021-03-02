class: CommandLineTool
id: GNUVID_FASTA_divider.py.cwl
inputs:
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -N
- id: in_l
  doc: ''
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- GNUVID_FASTA_divider.py
