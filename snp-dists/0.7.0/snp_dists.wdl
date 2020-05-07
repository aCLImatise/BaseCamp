version 1.0

task SnpDists {
  input {
    Boolean vV
    Boolean qQ
    Boolean aA
    Boolean kK
    Boolean mM
    Boolean cC
    Boolean bB
  }
  command <<<
    snp-dists \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-a" false="" aA} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB}
  >>>
}