version 1.0

task Lz4c {
  input {
    Boolean dD
    Boolean zZ
    Boolean fF
    Boolean vV
    Boolean vV
    Boolean qQ
    Boolean cC
    Boolean tT
    Boolean mM
    Boolean lL
    Boolean bB
    Boolean bdBd
    Boolean bB
    Boolean iI
    Boolean c0C0
    Boolean c1C1
    Boolean hcHc
    Boolean yY
  }
  command <<<
    lz4c \
      ~{true="-d" false="" dD} \
      ~{true="-z" false="" zZ} \
      ~{true="-f" false="" fF} \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-B" false="" bB} \
      ~{true="-BD" false="" bdBd} \
      ~{true="-b" false="" bB} \
      ~{true="-i" false="" iI} \
      ~{true="-c0" false="" c0C0} \
      ~{true="-c1" false="" c1C1} \
      ~{true="-hc" false="" hcHc} \
      ~{true="-y" false="" yY}
  >>>
}