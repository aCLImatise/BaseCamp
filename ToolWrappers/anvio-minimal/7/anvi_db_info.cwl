class: CommandLineTool
id: anvi_db_info.cwl
inputs:
- id: in_self_key
  doc: 'The key you wish to set or change. (default: None)'
  type: string?
  inputBinding:
    prefix: --self-key
- id: in_self_value
  doc: "The value you wish to set for the self key. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --self-value
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_genes_db
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-db-info
