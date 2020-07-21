class: CommandLineTool
id: ../../../ggd_uninstall.cwl
inputs:
- id: channel
  doc: The ggd channel of the recipe to uninstall. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: name
  doc: the name of the recipe to uninstall
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- uninstall
