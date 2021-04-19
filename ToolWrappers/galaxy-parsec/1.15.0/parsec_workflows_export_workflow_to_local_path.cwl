class: CommandLineTool
id: parsec_workflows_export_workflow_to_local_path.cwl
inputs:
- id: in_use_default_filename
  doc: "If the use_default_name parameter is True, the\nexported file will be saved\
    \ as\nfile_local_path/Galaxy-Workflow-%s.ga, where %s is\nthe workflow name. If\
    \ use_default_name is False,\nfile_local_path is assumed to contain the full file\n\
    path including filename.  [default: True]"
  type: boolean?
  inputBinding:
    prefix: --use_default_filename
- id: in_file_local_path
  doc: Exports a workflow in JSON format to a given local path.
  type: string
  inputBinding:
    position: 0
- id: in_none
  doc: 'Options:'
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
- export_workflow_to_local_path
