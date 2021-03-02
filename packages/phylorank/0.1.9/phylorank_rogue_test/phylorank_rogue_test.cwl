class: CommandLineTool
id: phylorank_rogue_test.cwl
inputs:
- id: in_out_group_tax_on
  doc: "taxon to use as outgroup (e.g., d__Archaea); imples\ntree should be rooted"
  type: string?
  inputBinding:
    prefix: --outgroup_taxon
- id: in_decorate
  doc: indicates trees should be decorated
  type: boolean?
  inputBinding:
    prefix: --decorate
- id: in_input_tree_dir
  doc: directory containing trees to assess incongruence over
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy_file
  doc: file indicating taxonomy of extant taxa
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: desired output directory for generated files
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
- rogue_test
