class: CommandLineTool
id: planemo_mull.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_mulled_namespace
  doc: "Build a mulled image with the specified\nnamespace - defaults to biocontainers.\n\
    Galaxy currently only recognizes images with\nthe namespace biocontainers."
  type: string?
  inputBinding:
    prefix: --mulled_namespace
- id: in_mulled_command
  doc: "Mulled action to perform for targets - this\ndefaults to 'build-and-test'."
  type: string?
  inputBinding:
    prefix: --mulled_command
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string?
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_subdirectories_dot
  doc: --mulled_conda_version TEXT     Install a specific version of Conda before
  type: string
  inputBinding:
    position: 0
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
- mull
