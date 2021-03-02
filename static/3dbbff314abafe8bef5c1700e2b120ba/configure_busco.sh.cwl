class: CommandLineTool
id: configure_busco.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1
cwlVersion: v1.1
baseCommand:
- configure_busco.sh
