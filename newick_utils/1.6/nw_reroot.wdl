version 1.0

task NwReroot {
  input {
    Boolean? deroot_splice_lca
    Boolean? lax_try_theingroup
    Boolean? treat_node_labels
  }
  command <<<
    nw_reroot \
      ~{if (deroot_splice_lca) then "-d" else ""} \
      ~{if (lax_try_theingroup) then "-l" else ""} \
      ~{if (treat_node_labels) then "-s" else ""}
  >>>
  parameter_meta {
    deroot_splice_lca: ": deroot - splice out the LCA of the ingroup, attaching its children\\nto the root. The ingroup is the root's child which has the more\\ndescendants. The root is expected to have two children. Other options\\nhave no effect."
    lax_try_theingroup: ": lax - if it is not possible to reroot on the outgroup, try the\\ningroup - that is, all nodes whose labels were NOT passed as\\narguments.  This can also fail, if both the outgroup and the\\ningroup have the tree's root as LCA. Note that to use this option\\nyou must make sure that you pass ALL outgroup labels, otherwise the\\ningroup will be wrong."
    treat_node_labels: ": treat inner node labels as bipartition support values. Although they\\nare attributed to nodes in Newick, these are actually properties of\\nedges, and are treated differently from clade labels, which are\\nreally properties of nodes. The \\\"Rerooting\\\" section of the manual\\nhas more details."
  }
  output {
    File out_stdout = stdout()
  }
}