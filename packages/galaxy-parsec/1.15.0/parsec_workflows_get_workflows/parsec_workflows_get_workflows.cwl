class: CommandLineTool
id: parsec_workflows_get_workflows.cwl
inputs:
- id: in_workflow_id
  doc: Encoded workflow ID (incompatible with ``name``)
  type: string?
  inputBinding:
    prefix: --workflow_id
- id: in_name
  doc: "Filter by name of workflow (incompatible with\n``workflow_id``). If multiple\
    \ names match the given\nname, all the workflows matching the argument will be\n\
    returned."
  type: string?
  inputBinding:
    prefix: --name
- id: in_published
  doc: if ``True``, return also published workflows
  type: boolean?
  inputBinding:
    prefix: --published
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
- get_workflows
