class: CommandLineTool
id: parsec_workflows_update_workflow.cwl
inputs:
- id: in_annotation
  doc: New annotation for the workflow
  type: string?
  inputBinding:
    prefix: --annotation
- id: in_menu_entry
  doc: Whether the workflow should appear in the user's menu
  type: boolean?
  inputBinding:
    prefix: --menu_entry
- id: in_name
  doc: New name of the workflow
  type: string?
  inputBinding:
    prefix: --name
- id: in_tags
  doc: Replace workflow tags with the given list
  type: string?
  inputBinding:
    prefix: --tags
- id: in_workflow
  doc: dictionary representing the workflow to be updated
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_workflow_id
  doc: ''
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
- update_workflow
