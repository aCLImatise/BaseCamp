class: CommandLineTool
id: CAT_add_names.cwl
inputs:
- id: i
  doc: ', --input_file     Path to input file. Can be either classification output
    file or ORF2LCA output file.'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ', --output_file    Path to output file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: ', --taxonomy_folder  Path to folder that contains taxonomy files.'
  type: boolean
  inputBinding:
    prefix: -t
- id: only_official
  doc: Only output official level names.
  type: boolean
  inputBinding:
    prefix: --only_official
- id: exclude_scores
  doc: Do not include bit-score support scores in the lineage.
  type: boolean
  inputBinding:
    prefix: --exclude_scores
- id: force
  doc: Force overwrite existing files.
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: Suppress verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- CAT
- add_names
