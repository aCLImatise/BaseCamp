version 1.0

task Fetch {
  input {
    File configConfig
    Int wW
    Boolean fF
    Boolean sS
    Boolean rR
    Boolean kK
    Boolean mM
    Boolean lL
  }
  command <<<
    fetch \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL}
  >>>
}