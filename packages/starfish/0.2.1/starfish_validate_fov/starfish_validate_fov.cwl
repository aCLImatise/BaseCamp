class: CommandLineTool
id: starfish_validate_fov.cwl
inputs:
- id: in_json_file_or_url
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
  dockerPull: quay.io/biocontainers/starfish:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- starfish
- validate
- fov
