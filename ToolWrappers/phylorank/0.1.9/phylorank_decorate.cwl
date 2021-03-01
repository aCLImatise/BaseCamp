class: CommandLineTool
id: phylorank_decorate.cwl
inputs:
- id: in_viral
  doc: indicates a viral input tree and taxonomy
  type: boolean?
  inputBinding:
    prefix: --viral
- id: in_skip_rd_refine
  doc: "skip refinement of taxonomy based on relative\ndivergence information"
  type: boolean?
  inputBinding:
    prefix: --skip_rd_refine
- id: in_trusted_tax_a_file
  doc: "file indicating trusted taxonomic groups to use for\ninferring distribution\
    \ (default: all taxa)"
  type: File?
  inputBinding:
    prefix: --trusted_taxa_file
- id: in_min_children
  doc: "minimum required child taxa to consider taxa when\ninferring distribution\
    \ (default: 2)"
  type: long?
  inputBinding:
    prefix: --min_children
- id: in_min_support
  doc: "minimum support value to consider taxa when inferring\ndistribution (default:\
    \ 0) (default: 0.0)\n"
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_input_tree
  doc: tree to decorate
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy_file
  doc: file indicating taxonomy of extant taxa
  type: string
  inputBinding:
    position: 1
- id: in_output_tree
  doc: decorated tree
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.9--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- decorate
