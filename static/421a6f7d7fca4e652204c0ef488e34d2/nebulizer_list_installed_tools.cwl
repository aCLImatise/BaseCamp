class: CommandLineTool
id: nebulizer_list_installed_tools.cwl
inputs:
- id: name
  doc: only list tool repositories matching NAME. Can include glob-style wild-cards.
  type: string
  inputBinding:
    prefix: --name
- id: toolshed
  doc: only list repositories installed from toolshed matching TOOLSHED. Can include
    glob-style wild-cards.
  type: string
  inputBinding:
    prefix: --toolshed
- id: owner
  doc: only list repositories from matching OWNER. Can include glob-style wild-cards.
  type: string
  inputBinding:
    prefix: --owner
- id: list_tools
  doc: also list the tools associated with each installed repository revision changeset.
  type: boolean
  inputBinding:
    prefix: --list-tools
- id: updateable
  doc: only show repositories with uninstalled updates or upgrades.
  type: boolean
  inputBinding:
    prefix: --updateable
- id: check_toolshed
  doc: check installed revisions directly against those available in the toolshed.
    NB this can be extremely slow.
  type: boolean
  inputBinding:
    prefix: --check-toolshed
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_installed_tools
