class: CommandLineTool
id: check_dependencies.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- check_dependencies.sh
