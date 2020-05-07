version 1.0

task Pairsnp {
  input {
    Boolean vV
    Boolean sS
    Boolean dD
    Boolean kK
    Boolean cC
    Boolean nN
    Boolean tT
    Boolean bB
  }
  command <<<
    pairsnp \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-k" false="" kK} \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB}
  >>>
}