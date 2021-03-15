class: CommandLineTool
id: inStrain_check_deps.cwl
inputs:
- id: in_in_strain
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- check_deps
