class: CommandLineTool
id: guppy_tog.cwl
inputs:
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
- tog
