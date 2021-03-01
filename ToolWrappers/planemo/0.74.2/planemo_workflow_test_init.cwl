class: CommandLineTool
id: planemo_workflow_test_init.cwl
inputs:
- id: in_force
  doc: Overwrite existing files if present.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_no_split_test
  doc: "Write workflow job and test definitions to\nseparate files."
  type: File?
  inputBinding:
    prefix: --no_split_test
- id: in_workflow_path_or_id
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
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- workflow_test_init
