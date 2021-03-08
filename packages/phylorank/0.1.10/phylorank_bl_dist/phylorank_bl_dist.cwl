class: CommandLineTool
id: phylorank_bl_dist.cwl
inputs:
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
- id: in_taxonomy_file
  doc: "read taxonomy from this file instead of directly from\ntree\n"
  type: File?
  inputBinding:
    prefix: --taxonomy_file
- id: in_input_tree
  doc: input tree to calculate branch length distributions
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: desired output directory for generated files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.10--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- bl_dist
