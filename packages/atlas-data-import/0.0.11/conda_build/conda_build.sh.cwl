class: CommandLineTool
id: conda_build.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atlas-data-import:0.0.11--0
cwlVersion: v1.1
baseCommand:
- conda_build.sh
