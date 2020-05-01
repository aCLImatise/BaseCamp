version 1.0

task DwgsimEval {
  input {
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean dD
    Boolean gG
    Boolean mM
    Boolean nN
    Boolean qQ
    Boolean zZ
    Boolean sS
    Boolean pP
    Boolean sS
    Boolean eE
    Boolean iI
    Boolean pP
  }
  command <<<
    dwgsim_eval \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-g" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-q" false="" qQ} \
      ~{true="-z" false="" zZ} \
      ~{true="-S" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-i" false="" iI} \
      ~{true="-P" false="" pP}
  >>>
}