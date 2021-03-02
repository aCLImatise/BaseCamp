class: CommandLineTool
id: planemo_conda_lint_directories..cwl
inputs:
- id: in_plane_mo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cond_a_lint
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_recipe_dir
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
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- conda_lint
- directories.
