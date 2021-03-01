class: CommandLineTool
id: gromacs_activate.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gromacs:2020.5--h3ddc34e_1
cwlVersion: v1.1
baseCommand:
- gromacs_activate.sh
