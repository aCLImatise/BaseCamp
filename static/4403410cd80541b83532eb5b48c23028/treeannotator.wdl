version 1.0

task Treeannotator {
  input {
    String? heights
    Int? burnin
    Int? burnin_trees
    String? limit
    String? target
    Int? force_discrete
    Int? hpd_two_d
  }
  command <<<
    treeannotator \
      ~{if defined(heights) then ("-heights " +  '"' + heights + '"') else ""} \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(burnin_trees) then ("-burninTrees " +  '"' + burnin_trees + '"') else ""} \
      ~{if defined(limit) then ("-limit " +  '"' + limit + '"') else ""} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(force_discrete) then ("-forceDiscrete " +  '"' + force_discrete + '"') else ""} \
      ~{if defined(hpd_two_d) then ("-hpd2D " +  '"' + hpd_two_d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    heights: "option of 'keep' (default), 'median', 'mean' or 'ca'"
    burnin: "number of states to be considered as 'burn-in'"
    burnin_trees: "number of trees to be considered as 'burn-in'"
    limit: "minimum posterior probability for a node to be annotated"
    target: "a user target tree to be annotated"
    force_discrete: "integer traits to be treated as discrete traits."
    hpd_two_d: "a (vector of comma seperated) HPD proportion(s)"
  }
  output {
    File out_stdout = stdout()
  }
}