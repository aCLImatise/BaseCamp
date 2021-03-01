version 1.0

task Treeannotator {
  input {
    String? heights
    String? burnin
    String? b
    String? limit
    String? target
    Int? force_discrete
    String? lowmem
    Int? hpd_two_d
    Int? no_hpd_two_d
    String? nos_a
  }
  command <<<
    treeannotator \
      ~{if defined(heights) then ("-heights " +  '"' + heights + '"') else ""} \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(limit) then ("-limit " +  '"' + limit + '"') else ""} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(force_discrete) then ("-forceDiscrete " +  '"' + force_discrete + '"') else ""} \
      ~{if defined(lowmem) then ("-lowMem " +  '"' + lowmem + '"') else ""} \
      ~{if defined(hpd_two_d) then ("-hpd2D " +  '"' + hpd_two_d + '"') else ""} \
      ~{if defined(no_hpd_two_d) then ("-nohpd2D " +  '"' + no_hpd_two_d + '"') else ""} \
      ~{if defined(nos_a) then ("-noSA " +  '"' + nos_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    heights: "option of 'keep' (default), 'median', 'mean' or 'ca'"
    burnin: "percentage of states to be considered as 'burn-in'"
    b: "percentage of states to be considered as 'burn-in'"
    limit: "minimum posterior probability for a node to be annotated"
    target: "a user target tree to be annotated"
    force_discrete: "integer traits to be treated as discrete traits."
    lowmem: "less memory, which is a bit slower."
    hpd_two_d: "HPD interval to be used for the bivariate traits"
    no_hpd_two_d: "calculation of HPD intervals for the bivariate traits"
    nos_a: "the tree set as begin from a not being from a sampled ancestor analysis, even if there are zero branch lengths in the tree set"
  }
  output {
    File out_stdout = stdout()
  }
}