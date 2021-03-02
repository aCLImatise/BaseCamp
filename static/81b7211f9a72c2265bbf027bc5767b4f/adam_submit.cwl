class: CommandLineTool
id: adam_submit.cwl
inputs:
- id: in_d_eight_b
  doc: 888   \       d8b          d8b  d8b
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/adam:0.33.0--0
cwlVersion: v1.1
baseCommand:
- adam-submit
