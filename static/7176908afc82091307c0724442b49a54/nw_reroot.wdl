version 1.0

task NwReroot {
  input {
    Boolean? deroot_splice_lca
    Boolean? lax_it_is
    Boolean? treat_inner_labels
  }
  command <<<
    nw_reroot \
      ~{if (deroot_splice_lca) then "-d" else ""} \
      ~{if (lax_it_is) then "-l" else ""} \
      ~{if (treat_inner_labels) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deroot_splice_lca: ": deroot - splice out the LCA of the ingroup, attaching its children\\nto the root. The ingroup is the root's child which has the more\\ndescendants. The root is expected to have two children. Other options\\nhave no effect."
    lax_it_is: ": lax - if it is not possible to reroot on the outgroup, try the\\ningroup - that is, all nodes whose labels were NOT passed as\\narguments.  This can also fail, if both the outgroup and the\\ningroup have the tree's root as LCA. Note that to use this option\\nyou must make sure that you pass ALL outgroup labels, otherwise the\\ningroup will be wrong."
    treat_inner_labels: ": treat inner node labels as bipartition support values. Although they\\nare attributed to nodes in Newick, these are actually properties of\\nedges, and are treated differently from clade labels, which are\\nreally properties of nodes. The \\\"Rerooting\\\" section of the manual\\nhas more details."
  }
  output {
    File out_stdout = stdout()
  }
}