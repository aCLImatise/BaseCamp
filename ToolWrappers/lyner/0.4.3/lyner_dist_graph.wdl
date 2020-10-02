version 1.0

task LynerDistgraph {
  input {
    Float? threshold
  }
  command <<<
    lyner dist_graph \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    threshold: "-l, --layout [fruchterman_reingold|kamada_kawai]\\n-c, --cliques\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}