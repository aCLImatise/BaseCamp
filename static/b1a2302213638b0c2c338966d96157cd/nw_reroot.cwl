class: CommandLineTool
id: nw_reroot.cwl
inputs:
- id: d
  doc: ": deroot - splice out the LCA of the ingroup, attaching its children to the\
    \ root. The ingroup is the root's child which has the more descendants. The root\
    \ is expected to have two children. Other options have no effect."
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: ": lax - if it is not possible to reroot on the outgroup, try the ingroup -\
    \ that is, all nodes whose labels were NOT passed as arguments.  This can also\
    \ fail, if both the outgroup and the ingroup have the tree's root as LCA. Note\
    \ that to use this option you must make sure that you pass ALL outgroup labels,\
    \ otherwise the ingroup will be wrong."
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': treat inner node labels as bipartition support values. Although they are
    attributed to nodes in Newick, these are actually properties of edges, and are
    treated differently from clade labels, which are really properties of nodes. The
    "Rerooting" section of the manual has more details.'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_reroot
