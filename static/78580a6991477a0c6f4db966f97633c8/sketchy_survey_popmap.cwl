class: CommandLineTool
id: sketchy_survey_popmap.cwl
inputs:
- id: ssh
  doc: Path to sum of shared hashes file to map to population [required]  [required]
  type: File
  inputBinding:
    prefix: --ssh
- id: tree
  doc: 'Path to phylogeny [newick] to use as population map [required] NOTE: This
    argument is mutually exclusive with arguments: [graph].'
  type: File
  inputBinding:
    prefix: --tree
- id: graph
  doc: 'Path to a population graph to use as population map [none] NOTE: This argument
    is mutually exclusive with arguments: [tree].'
  type: File
  inputBinding:
    prefix: --graph
- id: index
  doc: Path to lineage index file to use as validation population [required]  [required]
  type: File
  inputBinding:
    prefix: --index
- id: column
  doc: Column in index file that map the indices from the sum of shared hashes file
    to the population
  type: string
  inputBinding:
    prefix: --column
- id: output
  doc: Path to a output GIF [pop.gif]
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- popmap
