version 1.0

task Lz4cat {
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
  }
  command <<<
    lz4cat \
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
      ~{true="-i" false="" iI}
  >>>
}