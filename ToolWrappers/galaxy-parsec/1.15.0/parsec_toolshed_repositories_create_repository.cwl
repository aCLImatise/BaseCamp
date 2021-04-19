class: CommandLineTool
id: parsec_toolshed_repositories_create_repository.cwl
inputs:
- id: in_description
  doc: Optional description of the repository
  type: string?
  inputBinding:
    prefix: --description
- id: in_type
  doc: "type of the repository. One of \"unrestricted\",\n\"repository_suite_definition\"\
    , or\n\"tool_dependency_definition\"  [default:\nunrestricted]"
  type: string?
  inputBinding:
    prefix: --type
- id: in_remote_repository_url
  doc: Remote URL (e.g. GitHub/Bitbucket repository)
  type: string?
  inputBinding:
    prefix: --remote_repository_url
- id: in_homepage_url
  doc: Upstream's homepage for the project
  type: string?
  inputBinding:
    prefix: --homepage_url
- id: in_category_ids
  doc: List of encoded category IDs
  type: string?
  inputBinding:
    prefix: --category_ids
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_synopsis
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- toolshed_repositories
- create_repository
