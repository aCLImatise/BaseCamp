class: CommandLineTool
id: nextstrain_check_setup.cwl
inputs:
- id: in_set_default
  doc: "Set the default environment to the first which passes check-\nsetup. Checks\
    \ run in the order: docker, native, aws-batch.\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --set-default
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- check-setup
