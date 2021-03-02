class: CommandLineTool
id: wbuild.cwl
inputs:
- id: in_verbosity
  doc: Either CRITICAL, ERROR, WARNING, INFO or DEBUG
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_demo
  doc: Setup a demo wBuild demo project
  type: string
  inputBinding:
    position: 0
- id: in_in_it
  doc: Initialize the repository with wbuild.
  type: string
  inputBinding:
    position: 1
- id: in_update
  doc: Update the .wBuild folder to the most recent version of wBuild
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wbuild:1.8.0--py_0
cwlVersion: v1.1
baseCommand:
- wbuild
