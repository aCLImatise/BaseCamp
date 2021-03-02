version 1.0

task DRepAnalyze {
  input {
    Int? processors
    Boolean? debug
    Boolean? pl
    String? plots
  }
  command <<<
    dRep analyze \
      ~{plots} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (pl) then "-pl" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    pl: "[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\\nPlots. Input 'all' or 'a' to plot all\\n1) Primary clustering dendrogram\\n2) Secondary clustering dendrograms\\n3) Secondary clustering MDS\\n4) Comparison scatterplots\\n5) Cluster scoring plot\\n6) Winning genomes\\n(default: None)\\n"
    plots: ""
  }
  output {
    File out_stdout = stdout()
  }
}