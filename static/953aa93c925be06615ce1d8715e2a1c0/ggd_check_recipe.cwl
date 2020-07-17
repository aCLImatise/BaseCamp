class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_check_recipe.cwl
inputs:
- id: debug
  doc: (Optional) Set the stdout log level to debug
  type: boolean
  inputBinding:
    prefix: --debug
- id: dont_uninstall
  doc: (Optional) By default the newly installed local ggd data package is uninstalled
    after the check has finished. To bypass this uninstall step (to keep the local
    package installed) set this flag "-- dont_uninstall"
  type: boolean
  inputBinding:
    prefix: --dont_uninstall
- id: recipe_path
  doc: path to recipe directory (can also be path to the .bz2)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- check-recipe
