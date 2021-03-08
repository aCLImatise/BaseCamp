class: CommandLineTool
id: phylorank_rank_res.cwl
inputs:
- id: in_tax_a_file
  doc: "output file indicating taxa within each resolution\ncategory\n"
  type: File?
  inputBinding:
    prefix: --taxa_file
- id: in_input_tree
  doc: decorated tree
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy_file
  doc: file with taxonomy for extant taxa
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: output file with resolution of taxa at each rank
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tax_a_file
  doc: "output file indicating taxa within each resolution\ncategory\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_tax_a_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.10--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- rank_res
