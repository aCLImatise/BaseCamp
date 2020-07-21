class: CommandLineTool
id: ../../../nebulizer_install_repositories.cwl
inputs:
- id: install_resolver_dependencies
  doc: "[yes|no] install dependencies through a resolver that supports installation\
    \ (e.g. conda) (default is 'yes')"
  type: boolean
  inputBinding:
    prefix: --install-resolver-dependencies
- id: timeout
  doc: wait up to TIMEOUT seconds for tool installationsto complete (default is 600).
  type: string
  inputBinding:
    prefix: --timeout
- id: no_wait
  doc: don't wait for lengthy tool installations to complete.
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- install_repositories
