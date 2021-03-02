class: CommandLineTool
id: nebulizer_list_installed_tools.cwl
inputs:
- id: in_name
  doc: "only list tool repositories matching NAME. Can include\nglob-style wild-cards."
  type: string?
  inputBinding:
    prefix: --name
- id: in_toolshed
  doc: "only list repositories installed from toolshed matching\nTOOLSHED. Can include\
    \ glob-style wild-cards."
  type: string?
  inputBinding:
    prefix: --toolshed
- id: in_owner
  doc: "only list repositories from matching OWNER. Can include\nglob-style wild-cards."
  type: string?
  inputBinding:
    prefix: --owner
- id: in_list_tools
  doc: "also list the tools associated with each installed\nrepository revision changeset."
  type: boolean?
  inputBinding:
    prefix: --list-tools
- id: in_updateable
  doc: only show repositories with uninstalled updates or
  type: boolean?
  inputBinding:
    prefix: --updateable
- id: in_upgrades_dot
  doc: --check-toolshed     check installed revisions directly against those
  type: string
  inputBinding:
    position: 0
- id: in_slow_dot
  doc: --help               Show this message and exit.
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
- list_installed_tools
