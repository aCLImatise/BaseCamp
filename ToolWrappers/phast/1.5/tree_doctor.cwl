class: CommandLineTool
id: tree_doctor.cwl
inputs:
- id: in_prune
  doc: "Remove all leaves whose names are included in the given list\n(comma-separated),\
    \ then remove nodes and combine branches\nto restore as a complete binary tree\
    \ (i.e., with each\nnode having zero children or two children).  This option is\n\
    applied *before* all other options."
  type: string
  inputBinding:
    prefix: --prune
- id: in_prune_all_but
  doc: Like --prune, but remove all leaves *except* the ones specified.
  type: string
  inputBinding:
    prefix: --prune-all-but
- id: in_get_subtree
  doc: "Like --prune, but remove all leaves who are not descendants of\nnode.  (Note:\
    \ implies --name-ancestors if given node not\nexplicitly named in input tree)"
  type: string
  inputBinding:
    prefix: --get-subtree
- id: in_rename
  doc: "Rename leaves according to the given mapping.  The format of\n<mapping> must\
    \ be: \"oldname1 -> newname1 ; oldname2 ->\nnewname2 ; ...\".  This option is\
    \ applied *after* all other\noptions (i.e., old names will be used for --prune,\
    \ --merge,\netc.)"
  type: long
  inputBinding:
    prefix: --rename
- id: in_scale
  doc: Scale all branches by the specified factor.
  type: string
  inputBinding:
    prefix: --scale
- id: in_name_ancestors
  doc: "Ensure names are assigned to all ancestral nodes.  If a node\nis unnamed,\
    \ create a name by concatenating the names of a leaf\nfrom its left subtree and\
    \ a leaf from its right subtree."
  type: boolean
  inputBinding:
    prefix: --name-ancestors
- id: in_label_subtree
  doc: "<node[+]:label>\nAdd a label to the subtree of the named node.  If the node\
    \ name\nis followed by a \"+\" sign, then the branch leading to that node\nis\
    \ included in the subtree.  This may be used multiple times to add\nmore than\
    \ one label, though a single branch may have only one\nlabel.  --label-subtree\
    \ and --label-branches options are parsed in\nthe order given, so that later uses\
    \ may override earlier ones.\nLabels are applied *after* all pruning, re-rooting,\
    \ and re-naming\noptions are applied."
  type: boolean
  inputBinding:
    prefix: --label-subtree
- id: in_label_branches
  doc: "<branch1,branch2,...:label>\nAdd a label to the branches listed.  Branches\
    \ are named by the name\nof the node which descends from that branch.  See --label-subtree\n\
    above for more information."
  type: boolean
  inputBinding:
    prefix: --label-branches
- id: in_tree_only
  doc: Output tree only in Newick format rather than complete tree model.
  type: boolean
  inputBinding:
    prefix: --tree-only
- id: in_no_branch_len
  doc: (Implies --tree-only).  Output only topology in Newick format.
  type: boolean
  inputBinding:
    prefix: --no-branchlen
- id: in_dissect
  doc: "In place of ordinary output, print a description of the id,\nname, parent,\
    \ children, and distance to parent for each node\nof the tree.  Sometimes useful\
    \ for debugging.  Can be used with\nother options."
  type: boolean
  inputBinding:
    prefix: --dissect
- id: in_branch_len
  doc: "In place of ordinary output, print the total branch length of\nthe tree that\
    \ would have been printed."
  type: boolean
  inputBinding:
    prefix: --branchlen
- id: in_depth
  doc: "In place of ordinary output, report distance from named node to\nroot"
  type: string
  inputBinding:
    prefix: --depth
- id: in_re_root
  doc: Reroot tree at internal node with specified name.
  type: string
  inputBinding:
    prefix: --reroot
- id: in_subtree
  doc: "(for use with --scale)  Alter only the branches in the subtree\nbeneath the\
    \ specified node."
  type: string
  inputBinding:
    prefix: --subtree
- id: in_with_branch
  doc: "(For use with --reroot or --subtree) include branch above specified\nnode\
    \ with subtree beneath it."
  type: string
  inputBinding:
    prefix: --with-branch
- id: in_merge
  doc: "| <file2.nh>\nMerge with another tree model or tree.  The primary model\n\
    (<file.mod>) must have a subset of the species (leaves) in the\nsecondary model\
    \ (<file2.mod>), and the primary tree must be a\nproper subtree of the secondary\
    \ tree (i.e., the subtree of the\nsecondary tree beneath the LCA of the species\
    \ in the primary\ntree must equal the primary tree in terms of topology and\n\
    species names).  If a full tree model is given for the\nsecondary tree, only the\
    \ tree will be considered.  The merged\ntree model will have the rate matrix,\
    \ equilibrium frequencies,\nand rate distribution of the primary model, but a\
    \ merged tree\nthat includes all species from both models.  The trees will be\n\
    merged by first scaling the secondary tree such that the\nsubtree corresponding\
    \ to the primary tree has equal overall\nlength to the primary tree, then combining\
    \ the primary tree\nwith the non-overlapping portion of the secondary tree.  The\n\
    names of matching species (leaves) must be exactly equal."
  type: File
  inputBinding:
    prefix: --merge
- id: in_extrapolate
  doc: "| default\nExtrapolate to a larger set of species based on the given\nphylogeny\
    \ (Newick-format).  The primary tree must be a subtree\nof the phylogeny given\
    \ in <phylog.nh>, but it need not be\na \"proper\" subtree (see --merge).  A copy\
    \ will be created\nof the larger phylogeny then scaled such that the total branch\n\
    length of the subtree corresponding to the primary tree equals\nthe total branch\
    \ length of the primary tree; this new version\nwill then be used in place of\
    \ the primary tree.  If the string\n\"default\" is given instead of a filename,\
    \ then a phylogeny\nfor 25 vertebrate species, estimated from sequence data for\n\
    Target 1 (CFTR) of the NISC Comparative Sequencing Program\n(Thomas et al., Nature\
    \ 424:788-793, 2003), will be assumed.\nThis option is similar to merge but differs\
    \ in that the branch\nlength proportions of the output tree come completely from\
    \ the\nlarger tree and the smaller tree doesn't have to be a proper\nsubset of\
    \ the larger tree."
  type: long
  inputBinding:
    prefix: --extrapolate
- id: in_newick
  doc: "The input file is in Newick format (necessary if file name does\nnot end in\
    \ .nh)"
  type: boolean
  inputBinding:
    prefix: --newick
- id: in_file_dot_mod
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tree_doctor
