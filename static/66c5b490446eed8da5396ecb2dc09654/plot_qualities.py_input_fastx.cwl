class: CommandLineTool
id: plot_qualities.py_input_fastx.cwl
inputs:
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- plot_qualities.py
- input_fastx
