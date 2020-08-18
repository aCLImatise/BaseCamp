class: CommandLineTool
id: ../../../ggd_pkg_info.cwl
inputs:
- id: channel
  doc: The ggd channel of the recipe to list info about (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: show_recipe
  doc: '(Optional) When the flag is set, the recipe will be printed to the stdout.
    This will provide info on where the data is hosted and how it was processed. (NOTE:
    -sr flag does not accept arguments)'
  type: boolean
  inputBinding:
    prefix: --show_recipe
- id: name
  doc: the name of the recipe to get info about
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- pkg-info
