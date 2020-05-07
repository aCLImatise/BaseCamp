version 1.0

task CondenseBedGraph.pl {
  input {
    Boolean logLog
  }
  command <<<
    condenseBedGraph.pl \
      ~{true="-log" false="" logLog}
  >>>
}