version 1.0

task EvaluateGtf.pl {
  input {
    Boolean gG
    Boolean qQ
    Boolean aA
    Boolean vV
  }
  command <<<
    evaluate_gtf.pl \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-A" false="" aA} \
      ~{true="-v" false="" vV}
  >>>
}