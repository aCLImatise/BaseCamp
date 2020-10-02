class: CommandLineTool
id: nw_reroot.cwl
inputs:
- id: in_deroot_splice_lca
  doc: ": deroot - splice out the LCA of the ingroup, attaching its children\nto the\
    \ root. The ingroup is the root's child which has the more\ndescendants. The root\
    \ is expected to have two children. Other options\nhave no effect."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_lax_try_theingroup
  doc: ": lax - if it is not possible to reroot on the outgroup, try the\ningroup\
    \ - that is, all nodes whose labels were NOT passed as\narguments.  This can also\
    \ fail, if both the outgroup and the\ningroup have the tree's root as LCA. Note\
    \ that to use this option\nyou must make sure that you pass ALL outgroup labels,\
    \ otherwise the\ningroup will be wrong."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_treat_node_labels
  doc: ": treat inner node labels as bipartition support values. Although they\nare\
    \ attributed to nodes in Newick, these are actually properties of\nedges, and\
    \ are treated differently from clade labels, which are\nreally properties of nodes.\
    \ The \"Rerooting\" section of the manual\nhas more details."
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_reroot
