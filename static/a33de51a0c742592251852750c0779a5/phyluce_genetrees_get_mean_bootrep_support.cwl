class: CommandLineTool
id: phyluce_genetrees_get_mean_bootrep_support.cwl
inputs:
- id: trees
  doc: Tree file
  type: string
  inputBinding:
    prefix: --trees
- id: config
  doc: config file
  type: string
  inputBinding:
    prefix: --config
- id: schema
  doc: The scheme of the input data
  type: string
  inputBinding:
    prefix: --schema
- id: root
  doc: The taxon on which to root trees
  type: string
  inputBinding:
    prefix: --root
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_mean_bootrep_support
