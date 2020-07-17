version 1.0

task CondenseBedGraph.pl {
  input {
    Boolean? log
  }
  command <<<
    condenseBedGraph.pl \
      ~{true="-log" false="" log}
  >>>
  parameter_meta {
    log: "(output log2)"
  }
}