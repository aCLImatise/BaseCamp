version 1.0

task Whamg {
  input {
    String eE
    Boolean fF
    Boolean aA
    Boolean sS
    Boolean gG
    Boolean rR
    Boolean mM
    Boolean iI
    Boolean zZ
    Boolean dD
    Boolean zZ
    Boolean iI
    Boolean eE
  }
  command <<<
    whamg \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-r" false="" rR} \
      ~{true="-m" false="" mM} \
      ~{true="-i" false="" iI} \
      ~{true="-z" false="" zZ} \
      ~{true="-d" false="" dD} \
      ~{true="-z" false="" zZ} \
      ~{true="-i" false="" iI} \
      ~{true="-e" false="" eE}
  >>>
}