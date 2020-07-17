version 1.0

task MakeGnuplotGraph.pl.bak {
  input {
    Boolean? no_key
    Boolean? debug
  }
  command <<<
    make_gnuplot_graph.pl.bak \
      ~{true="-no_key" false="" no_key} \
      ~{true="-debug" false="" debug}
  >>>
  parameter_meta {
    no_key: "Supress printing of keys in a -all plot"
    debug: ":          Print the resulting commands to STDOUT"
  }
}