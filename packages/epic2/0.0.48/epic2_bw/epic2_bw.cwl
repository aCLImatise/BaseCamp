class: CommandLineTool
id: epic2_bw.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/epic2:0.0.48--py37hd0e48df_0
cwlVersion: v1.1
baseCommand:
- epic2-bw
