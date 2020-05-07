class: CommandLineTool
id: ghost_tree_scaffold_hybrid_tree_foundation_tree.cwl
inputs:
- id: graft_level
  doc: '[p|c|o|f|g]  Taxonomic level to graft extensions to foundation. Default is
    g (genus). p=phylum, c=class, o=order, f=family.'
  type: boolean
  inputBinding:
    prefix: --graft-level
- id: stderr
  doc: Saves error log file (optional)
  type: boolean
  inputBinding:
    prefix: --stderr
- id: exclude_id_list
  doc: Will not save accession id file (optional)
  type: boolean
  inputBinding:
    prefix: --exclude-id-list
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- scaffold
- hybrid-tree-foundation-tree
