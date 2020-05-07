class: CommandLineTool
id: planemo_mulled_init.cwl
inputs:
- id: mulled_cond_a_version
  doc: Install a specific version of Conda before running the command, by default
    the version that comes with the continuumio miniconda3 image will be used under
    Linux and under Mac OS X Conda will be upgraded to to work around a bug in 4.2.
  type: string
  inputBinding:
    prefix: --mulled_conda_version
- id: mulled_namespace
  doc: Build a mulled image with the specified namespace - defaults to biocontainers.
    Galaxy currently only recognizes images with the namespace biocontainers.
  type: string
  inputBinding:
    prefix: --mulled_namespace
- id: mulled_command
  doc: Mulled action to perform for targets - this defaults to 'build-and-test'.
  type: string
  inputBinding:
    prefix: --mulled_command
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- mulled_init
