class: CommandLineTool
id: phylorank_rogue_test.cwl
inputs:
- id: input_tree_dir
  doc: directory containing trees to assess incongruence over
  type: string
  inputBinding:
    position: 0
- id: taxonomy_file
  doc: file indicating taxonomy of extant taxa
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: desired output directory for generated files
  type: string
  inputBinding:
    position: 2
- id: out_group_tax_on
  doc: taxon to use as outgroup (e.g., d__Archaea); imples tree should be rooted
  type: string
  inputBinding:
    prefix: --outgroup_taxon
- id: decorate
  doc: indicates trees should be decorated
  type: boolean
  inputBinding:
    prefix: --decorate
outputs: []
cwlVersion: v1.1
baseCommand:
- phylorank
- rogue_test
