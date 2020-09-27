class: CommandLineTool
id: nebulizer_update_tool.cwl
inputs:
- id: in_install_tool_dependencies
  doc: "[yes|no]\ninstall tool dependencies via the toolshed,\nif any are defined\
    \ (default is 'yes')"
  type: boolean
  inputBinding:
    prefix: --install-tool-dependencies
- id: in_install_repository_dependencies
  doc: "[yes|no]\ninstall repository dependencies via the\ntoolshed, if any are defined\
    \ (default is\n'yes')"
  type: boolean
  inputBinding:
    prefix: --install-repository-dependencies
- id: in_install_resolver_dependencies
  doc: "[yes|no]\ninstall dependencies through a resolver that\nsupports installation\
    \ (e.g. conda) (default\nis 'yes')"
  type: boolean
  inputBinding:
    prefix: --install-resolver-dependencies
- id: in_timeout
  doc: "wait up to TIMEOUT seconds for tool\ninstallationsto complete (default is\
    \ 600)."
  type: long
  inputBinding:
    prefix: --timeout
- id: in_no_wait
  doc: don't wait for lengthy tool installations to
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: in_fast_qc
  doc: The tool must already be present in GALAXY and a newer changeset revision
  type: string
  inputBinding:
    position: 0
- id: in_complete_dot
  doc: --check-toolshed                check installed revisions directly against
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_tool
