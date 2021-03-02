class: CommandLineTool
id: tree_events_dlc.cwl
inputs:
- id: in_stree
  doc: species tree (newick format)
  type: string?
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: mapping of gene names to species names
  type: long?
  inputBinding:
    prefix: --smap
- id: in_tree_ext
  doc: 'tree file extension (default: ".coal.tree")'
  type: File?
  inputBinding:
    prefix: --treeext
- id: in_reco_next
  doc: 'tree file extension (default: ".coal.recon")'
  type: File?
  inputBinding:
    prefix: --reconext
- id: in_use_f_amid
  doc: set to ignore extra lineages at implied speciation
  type: boolean?
  inputBinding:
    prefix: --use-famid
- id: in_nodes
  doc: --use-locus-recon     if set, use locus recon rather than MPR
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tree-events-dlc
