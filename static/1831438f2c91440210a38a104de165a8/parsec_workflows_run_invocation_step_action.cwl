class: CommandLineTool
id: parsec_workflows_run_invocation_step_action.cwl
inputs:
- id: in_action
  doc: nature of this action and what is expected will vary based on the the type
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- workflows
- run_invocation_step_action
