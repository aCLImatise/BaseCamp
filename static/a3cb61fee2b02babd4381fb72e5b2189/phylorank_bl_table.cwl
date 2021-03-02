class: CommandLineTool
id: phylorank_bl_table.cwl
inputs:
- id: in_step_size
  doc: "step size for mean branch length criterion (default:\n0.01)\n"
  type: long?
  inputBinding:
    prefix: --step_size
- id: in_input_tree
  doc: input tree to calculate branch length distributions
  type: string
  inputBinding:
    position: 0
- id: in_tax_on_category
  doc: file indicating category for each taxon in the tree
  type: string
  inputBinding:
    position: 1
- id: in_output_table
  doc: desired named of output table
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
- bl_table
