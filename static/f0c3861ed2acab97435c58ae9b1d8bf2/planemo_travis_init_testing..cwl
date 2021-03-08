class: CommandLineTool
id: planemo_travis_init_testing..cwl
inputs:
- id: in_plane_mo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_travis_in_it
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- travis_init
- testing.
