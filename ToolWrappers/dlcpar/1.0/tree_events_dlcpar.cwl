class: CommandLineTool
id: tree_events_dlcpar.cwl
inputs:
- id: in_stree
  doc: species tree file in newick format
  type: File?
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: gene to species map
  type: string?
  inputBinding:
    prefix: --smap
- id: in_l_map
  doc: gene to locus map (species-specific)
  type: string?
  inputBinding:
    prefix: --lmap
- id: in_tree_ext
  doc: 'tree file extension (default: ".tree")'
  type: File?
  inputBinding:
    prefix: --treeext
- id: in_use_f_amid
  doc: "set to ignore extra lineages at implied speciation\nnodes\n"
  type: boolean?
  inputBinding:
    prefix: --use-famid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tree-events-dlcpar
