version 1.0

task Lz4 {
  input {
    Boolean dD
    Boolean zZ
    Boolean fF
    Boolean vV
    Boolean vV
    Boolean qQ
    Boolean cC
    Boolean tT
    Boolean lL
    Boolean bB
    Boolean bdBd
    Boolean sxSx
    Boolean bB
    Boolean iI
  }
  command <<<
    lz4 \
      ~{true="-d" false="" dD} \
      ~{true="-z" false="" zZ} \
      ~{true="-f" false="" fF} \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-B" false="" bB} \
      ~{true="-BD" false="" bdBd} \
      ~{true="-Sx" false="" sxSx} \
      ~{true="-b" false="" bB} \
      ~{true="-i" false="" iI}
  >>>
}