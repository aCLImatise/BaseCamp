class: CommandLineTool
id: run_sepp.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:v4.5.0--py37_0
cwlVersion: v1.1
baseCommand:
- run-sepp.sh
