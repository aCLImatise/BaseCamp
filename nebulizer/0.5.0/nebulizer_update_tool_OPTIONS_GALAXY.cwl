class: CommandLineTool
id: nebulizer_update_tool_OPTIONS_GALAXY.cwl
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
- id: check_toolshed
  doc: check installed revisions directly against those available in the toolshed
  type: boolean
  inputBinding:
    prefix: --check-toolshed
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_tool
- OPTIONS
- GALAXY
