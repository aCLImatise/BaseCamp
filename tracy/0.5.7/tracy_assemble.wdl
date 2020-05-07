version 1.0

task TracyAssemble {
  input {
    Boolean rR
    Boolean pP
    Boolean tT
    Boolean fF
    Boolean gG
    Boolean eE
    Boolean mM
    Boolean nN
    Boolean dD
    Boolean oO
    Boolean iI
  }
  command <<<
    tracy assemble \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-i" false="" iI}
  >>>
}