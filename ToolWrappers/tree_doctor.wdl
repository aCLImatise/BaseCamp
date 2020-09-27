version 1.0

task TreeDoctor {
  input {
    String? prune
    String? prune_all_but
    String? get_subtree
    Int? rename
    String? scale
    Boolean? name_ancestors
    Boolean? label_subtree
    Boolean? label_branches
    Boolean? tree_only
    Boolean? no_branch_len
    Boolean? dissect
    Boolean? branch_len
    String? depth
    String? re_root
    String? subtree
    String? with_branch
    File? merge
    Int? extrapolate
    Boolean? newick
    File file_dot_mod
  }
  command <<<
    tree_doctor \
      ~{file_dot_mod} \
      ~{if defined(prune) then ("--prune " +  '"' + prune + '"') else ""} \
      ~{if defined(prune_all_but) then ("--prune-all-but " +  '"' + prune_all_but + '"') else ""} \
      ~{if defined(get_subtree) then ("--get-subtree " +  '"' + get_subtree + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (name_ancestors) then "--name-ancestors" else ""} \
      ~{if (label_subtree) then "--label-subtree" else ""} \
      ~{if (label_branches) then "--label-branches" else ""} \
      ~{if (tree_only) then "--tree-only" else ""} \
      ~{if (no_branch_len) then "--no-branchlen" else ""} \
      ~{if (dissect) then "--dissect" else ""} \
      ~{if (branch_len) then "--branchlen" else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(re_root) then ("--reroot " +  '"' + re_root + '"') else ""} \
      ~{if defined(subtree) then ("--subtree " +  '"' + subtree + '"') else ""} \
      ~{if defined(with_branch) then ("--with-branch " +  '"' + with_branch + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(extrapolate) then ("--extrapolate " +  '"' + extrapolate + '"') else ""} \
      ~{if (newick) then "--newick" else ""}
  >>>
  parameter_meta {
    prune: "Remove all leaves whose names are included in the given list\\n(comma-separated), then remove nodes and combine branches\\nto restore as a complete binary tree (i.e., with each\\nnode having zero children or two children).  This option is\\napplied *before* all other options."
    prune_all_but: "Like --prune, but remove all leaves *except* the ones specified."
    get_subtree: "Like --prune, but remove all leaves who are not descendants of\\nnode.  (Note: implies --name-ancestors if given node not\\nexplicitly named in input tree)"
    rename: "Rename leaves according to the given mapping.  The format of\\n<mapping> must be: \\\"oldname1 -> newname1 ; oldname2 ->\\nnewname2 ; ...\\\".  This option is applied *after* all other\\noptions (i.e., old names will be used for --prune, --merge,\\netc.)"
    scale: "Scale all branches by the specified factor."
    name_ancestors: "Ensure names are assigned to all ancestral nodes.  If a node\\nis unnamed, create a name by concatenating the names of a leaf\\nfrom its left subtree and a leaf from its right subtree."
    label_subtree: "<node[+]:label>\\nAdd a label to the subtree of the named node.  If the node name\\nis followed by a \\\"+\\\" sign, then the branch leading to that node\\nis included in the subtree.  This may be used multiple times to add\\nmore than one label, though a single branch may have only one\\nlabel.  --label-subtree and --label-branches options are parsed in\\nthe order given, so that later uses may override earlier ones.\\nLabels are applied *after* all pruning, re-rooting, and re-naming\\noptions are applied."
    label_branches: "<branch1,branch2,...:label>\\nAdd a label to the branches listed.  Branches are named by the name\\nof the node which descends from that branch.  See --label-subtree\\nabove for more information."
    tree_only: "Output tree only in Newick format rather than complete tree model."
    no_branch_len: "(Implies --tree-only).  Output only topology in Newick format."
    dissect: "In place of ordinary output, print a description of the id,\\nname, parent, children, and distance to parent for each node\\nof the tree.  Sometimes useful for debugging.  Can be used with\\nother options."
    branch_len: "In place of ordinary output, print the total branch length of\\nthe tree that would have been printed."
    depth: "In place of ordinary output, report distance from named node to\\nroot"
    re_root: "Reroot tree at internal node with specified name."
    subtree: "(for use with --scale)  Alter only the branches in the subtree\\nbeneath the specified node."
    with_branch: "(For use with --reroot or --subtree) include branch above specified\\nnode with subtree beneath it."
    merge: "| <file2.nh>\\nMerge with another tree model or tree.  The primary model\\n(<file.mod>) must have a subset of the species (leaves) in the\\nsecondary model (<file2.mod>), and the primary tree must be a\\nproper subtree of the secondary tree (i.e., the subtree of the\\nsecondary tree beneath the LCA of the species in the primary\\ntree must equal the primary tree in terms of topology and\\nspecies names).  If a full tree model is given for the\\nsecondary tree, only the tree will be considered.  The merged\\ntree model will have the rate matrix, equilibrium frequencies,\\nand rate distribution of the primary model, but a merged tree\\nthat includes all species from both models.  The trees will be\\nmerged by first scaling the secondary tree such that the\\nsubtree corresponding to the primary tree has equal overall\\nlength to the primary tree, then combining the primary tree\\nwith the non-overlapping portion of the secondary tree.  The\\nnames of matching species (leaves) must be exactly equal."
    extrapolate: "| default\\nExtrapolate to a larger set of species based on the given\\nphylogeny (Newick-format).  The primary tree must be a subtree\\nof the phylogeny given in <phylog.nh>, but it need not be\\na \\\"proper\\\" subtree (see --merge).  A copy will be created\\nof the larger phylogeny then scaled such that the total branch\\nlength of the subtree corresponding to the primary tree equals\\nthe total branch length of the primary tree; this new version\\nwill then be used in place of the primary tree.  If the string\\n\\\"default\\\" is given instead of a filename, then a phylogeny\\nfor 25 vertebrate species, estimated from sequence data for\\nTarget 1 (CFTR) of the NISC Comparative Sequencing Program\\n(Thomas et al., Nature 424:788-793, 2003), will be assumed.\\nThis option is similar to merge but differs in that the branch\\nlength proportions of the output tree come completely from the\\nlarger tree and the smaller tree doesn't have to be a proper\\nsubset of the larger tree."
    newick: "The input file is in Newick format (necessary if file name does\\nnot end in .nh)"
    file_dot_mod: ""
  }
  output {
    File out_stdout = stdout()
  }
}