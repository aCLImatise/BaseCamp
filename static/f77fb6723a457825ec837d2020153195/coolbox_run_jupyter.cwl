class: CommandLineTool
id: coolbox_run_jupyter.cwl
inputs:
- id: in_j_up_y_ter_args
  doc: "=\e[4mJUPYTER_ARGS\e[0m\nDefault: '--ip=0.0.0.0'\nArguments for run jupyter.\n"
  type: boolean?
  inputBinding:
    prefix: --jupyter_args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.5--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- run_jupyter
