class: CommandLineTool
id: nebulizer_install_tool.cwl
inputs:
- id: in_tool_panel_section
  doc: "tool panel section name or id to install the\ntool under; if the section doesn't\
    \ exist\nthen it will be created. If this option is\nomitted then the tool will\
    \ be installed at\nthe top-level i.e. not in any section."
  type: string?
  inputBinding:
    prefix: --tool-panel-section
- id: in_install_tool_dependencies
  doc: "[yes|no]\ninstall tool dependencies via the toolshed,\nif any are defined\
    \ (default is 'yes')"
  type: boolean?
  inputBinding:
    prefix: --install-tool-dependencies
- id: in_install_repository_dependencies
  doc: "[yes|no]\ninstall repository dependencies via the\ntoolshed, if any are defined\
    \ (default is\n'yes')"
  type: boolean?
  inputBinding:
    prefix: --install-repository-dependencies
- id: in_install_resolver_dependencies
  doc: "[yes|no]\ninstall dependencies through a resolver that\nsupports installation\
    \ (e.g. conda) (default\nis 'yes')"
  type: boolean?
  inputBinding:
    prefix: --install-resolver-dependencies
- id: in_timeout
  doc: "wait up to TIMEOUT seconds for tool\ninstallationsto complete (default is\
    \ 600)."
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_no_wait
  doc: don't wait for lengthy tool installations to
  type: boolean?
  inputBinding:
    prefix: --no-wait
- id: in_assumed_dot
  doc: Installation will fail if the specified revision is not installable, or if
  type: string
  inputBinding:
    position: 0
- id: in_complete_dot
  doc: --help                          Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- install_tool
