class: CommandLineTool
id: sketchy_pull.cwl
inputs:
- id: in_path
  doc: Path to sketchy home directory [~/.sketchy ]
  type: File?
  inputBinding:
    prefix: --path
- id: in_full
  doc: Pull the full default sketch collections [false]
  type: boolean?
  inputBinding:
    prefix: --full
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- pull
