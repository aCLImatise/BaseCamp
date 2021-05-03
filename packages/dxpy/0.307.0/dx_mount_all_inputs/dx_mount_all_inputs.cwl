class: CommandLineTool
id: dx_mount_all_inputs.cwl
inputs:
- id: in_except
  doc: "Do not mount the input with this name. (May be used\nmultiple times.)"
  type: string?
  inputBinding:
    prefix: --except
- id: in_verbose
  doc: Start dxfuse with '-verbose 2' logging
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-mount-all-inputs
