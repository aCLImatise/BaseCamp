version 1.0

task Trf {
  input {
    Boolean mM
    Boolean fF
    Boolean dD
    Boolean rR
    String lL
    Boolean ngsNgs
  }
  command <<<
    trf \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-ngs" false="" ngsNgs}
  >>>
}