version 1.0

task Backspin {
  input {
    Boolean dD
    Boolean tT
    Boolean fF
    Boolean sS
    Boolean tT
    Boolean sS
    Boolean gG
    Boolean cC
    Boolean kK
    Boolean rR
    Boolean bB
    Boolean vV
  }
  command <<<
    backspin \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-S" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-k" false="" kK} \
      ~{true="-r" false="" rR} \
      ~{true="-b" false="" bB} \
      ~{true="-v" false="" vV}
  >>>
}