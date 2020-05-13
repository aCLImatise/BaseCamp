version 1.0

task Julietflow {
  input {
    Boolean iI
    Boolean rR
    Boolean cC
    Boolean jJ
    Boolean eE
    Boolean tT
    Boolean mM
    Boolean nN
    Boolean gG
    Boolean pP
    Boolean kK
    Boolean zZ
  }
  command <<<
    julietflow \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-j" false="" jJ} \
      ~{true="-e" false="" eE} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-k" false="" kK} \
      ~{true="-z" false="" zZ}
  >>>
}