class: CommandLineTool
id: oc_util_update_result.cwl
inputs:
- id: in_recursive_operation
  doc: recursive operation
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_backup_original_copy
  doc: backup original copy with .bak extension
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_db_path
  doc: path to a result db file or a directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oc
- util
- update-result
