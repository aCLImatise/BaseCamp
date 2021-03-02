class: CommandLineTool
id: starfish_util.cwl
inputs:
- id: in_install_strict_dependencies
  doc: warning! updates different packages in your...
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/starfish:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- starfish
- util
