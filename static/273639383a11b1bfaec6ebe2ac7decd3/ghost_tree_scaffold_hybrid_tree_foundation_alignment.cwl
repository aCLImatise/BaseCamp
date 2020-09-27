class: CommandLineTool
id: ghost_tree_scaffold_hybrid_tree_foundation_alignment.cwl
inputs:
- id: in_graft_level
  doc: "[p|c|o|f|g]    Taxonomic level to graft extensions to\nfoundation. Default\
    \ is g (genus). p=phylum,\nc=class, o=order, f=family."
  type: boolean
  inputBinding:
    prefix: --graft-level
- id: in_stderr
  doc: Saves error log file (optional)
  type: boolean
  inputBinding:
    prefix: --stderr
- id: in_save_foundation_alignment
  doc: "Saves non-redundant foundation alignment file\n(optional)"
  type: boolean
  inputBinding:
    prefix: --save-foundation-alignment
- id: in_save_foundation_tree
  doc: "Saves foundation phylogenetic tree file\n(optional)"
  type: boolean
  inputBinding:
    prefix: --save-foundation-tree
- id: in_exclude_id_list
  doc: Will not save accession id file (optional)
  type: boolean
  inputBinding:
    prefix: --exclude-id-list
- id: in_ghost_tree_output_folder
  doc: Make hybrid-tree using foundation alignment.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghost-tree
- scaffold
- hybrid-tree-foundation-alignment
