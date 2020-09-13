version 1.0

task LynerDistgraph {
  input {
    Float? threshold
    Boolean? layout
    Boolean? cliques
  }
  command <<<
    lyner dist_graph \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (layout) then "--layout" else ""} \
      ~{if (cliques) then "--cliques" else ""}
  >>>
  parameter_meta {
    threshold: ""
    layout: "[fruchterman_reingold|kamada_kawai]"
    cliques: ""
  }
  output {
    File out_stdout = stdout()
  }
}