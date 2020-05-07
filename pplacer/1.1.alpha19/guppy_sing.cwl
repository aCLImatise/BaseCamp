class: CommandLineTool
id: guppy_sing.cwl
inputs:
- id: point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: pp
  doc: Use posterior probability for the weight.
  type: boolean
  inputBinding:
    prefix: --pp
- id: o
  doc: Specify the filename to write to.
  type: boolean
  inputBinding:
    prefix: -o
- id: out_dir
  doc: Specify the directory to write files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: min_fat
  doc: 'The minimum branch length for fattened edges (to increase their visibility).
    To turn off set to 0. Default: 0.01'
  type: boolean
  inputBinding:
    prefix: --min-fat
- id: total_width
  doc: 'Set the total pixel width for all of the branches of the tree. Default: 300'
  type: boolean
  inputBinding:
    prefix: --total-width
- id: width_factor
  doc: Override total-width by directly setting the number of pixels per unit of thing
    displayed.
  type: boolean
  inputBinding:
    prefix: --width-factor
- id: node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean
  inputBinding:
    prefix: --node-numbers
- id: xml
  doc: Write phyloXML (with colors) for all visualizations.
  type: boolean
  inputBinding:
    prefix: --xml
- id: node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean
  inputBinding:
    prefix: --node-numbers
- id: help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- guppy
- sing
