class: CommandLineTool
id: removehuman2.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- removehuman2.sh
