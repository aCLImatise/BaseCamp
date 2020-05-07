version 1.0

task MakeIntronLenghtVsPerformanceGraph.pl {
  input {
    Int mM
    Int xX
    String bB
    String bB
    Boolean gG
    Boolean qQ
    Boolean vV
  }
  command <<<
    make_intron_lenght_vs_performance_graph.pl \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV}
  >>>
}