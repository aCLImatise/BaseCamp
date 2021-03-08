class: CommandLineTool
id: arv_federation_migrate.cwl
inputs:
- id: in_tokens
  doc: Read tokens from FILE. Not needed when using
  type: File?
  inputBinding:
    prefix: --tokens
- id: in_migrate
  doc: "Consume report .csv and migrate users to designated\nArvados accounts."
  type: File?
  inputBinding:
    prefix: --migrate
- id: in_dry_run
  doc: "Consume report .csv and report how user would be\nmigrated to designated Arvados\
    \ accounts."
  type: File?
  inputBinding:
    prefix: --dry-run
- id: in_check
  doc: "Check that tokens are usable and the federation is\nwell connected.\n"
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_login_cluster_dot
  doc: --data-into-subproject
  type: string
  inputBinding:
    position: 0
- id: in_account_dot
  doc: --report FILE         Generate report .csv file listing users by email
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.2--py_0
cwlVersion: v1.1
baseCommand:
- arv-federation-migrate
