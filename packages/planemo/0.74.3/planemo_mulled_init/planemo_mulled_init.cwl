class: CommandLineTool
id: planemo_mulled_init.cwl
inputs:
- id: in_mulled_cond_a_version
  doc: "Install a specific version of Conda before\nrunning the command, by default\
    \ the version\nthat comes with the continuumio miniconda3\nimage will be used\
    \ under Linux and under Mac OS\nX Conda will be upgraded to to work around a\n\
    bug in 4.2."
  type: double?
  inputBinding:
    prefix: --mulled_conda_version
- id: in_mulled_namespace
  doc: "Build a mulled image with the specified\nnamespace - defaults to biocontainers.\
    \ Galaxy\ncurrently only recognizes images with the\nnamespace biocontainers."
  type: string?
  inputBinding:
    prefix: --mulled_namespace
- id: in_mulled_command
  doc: "Mulled action to perform for targets - this\ndefaults to 'build-and-test'."
  type: string?
  inputBinding:
    prefix: --mulled_command
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
- mulled_init
