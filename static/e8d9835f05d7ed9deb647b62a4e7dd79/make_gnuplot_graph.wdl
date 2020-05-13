version 1.0

task MakeGnuplotGraph.pl {
  input {
    Boolean noNoKey
    Boolean debugDebug
  }
  command <<<
    make_gnuplot_graph.pl \
      ~{true="-no_key" false="" noNoKey} \
      ~{true="-debug" false="" debugDebug}
  >>>
}