class: CommandLineTool
id: nebulizer_list_repositories.cwl
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
- id: updateable
  doc: only show repositories with uninstalled updates or upgrades.
  type: boolean
  inputBinding:
    prefix: --updateable
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_repositories
