class: CommandLineTool
id: sketchy_survey_popmap.cwl
inputs:
- id: in_ssh
  doc: "Path to sum of shared hashes file to map to population\n[required]  [required]"
  type: File?
  inputBinding:
    prefix: --ssh
- id: in_tree
  doc: "Path to phylogeny [newick] to use as population map\n[required] NOTE: This\
    \ argument is mutually exclusive with\narguments: [graph]."
  type: File?
  inputBinding:
    prefix: --tree
- id: in_graph
  doc: "Path to a population graph to use as population map\n[none] NOTE: This argument\
    \ is mutually exclusive with\narguments: [tree]."
  type: File?
  inputBinding:
    prefix: --graph
- id: in_index
  doc: "Path to lineage index file to use as validation\npopulation [required]  [required]"
  type: File?
  inputBinding:
    prefix: --index
- id: in_column
  doc: "Column in index file that map the indices from the sum of\nshared hashes file\
    \ to the population"
  type: File?
  inputBinding:
    prefix: --column
- id: in_output
  doc: Path to a output GIF [pop.gif]
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to a output GIF [pop.gif]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- popmap
