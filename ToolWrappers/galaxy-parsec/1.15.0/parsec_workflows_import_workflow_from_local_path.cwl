class: CommandLineTool
id: parsec_workflows_import_workflow_from_local_path.cwl
inputs:
- id: in_publish
  doc: "if ``True`` the uploaded workflow will be published; otherwise\nit will be\
    \ visible only by the user which uploads it (default)"
  type: boolean?
  inputBinding:
    prefix: --publish
- id: in_file_local_path
  doc: Imports a new workflow given the path to a file containing a previously
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
- import_workflow_from_local_path
