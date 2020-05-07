version 1.0

task Mutplot {
  input {
    Boolean vV
    Boolean oO
    Boolean nN
    Boolean wW
    Boolean sS
    Boolean dD
    Boolean dD
    Boolean nN
    Boolean mM
    Boolean sS
    Boolean eE
    Boolean igvIgv
    Boolean speciesSpecies
    Boolean inInDel
    Boolean figFigWidth
    Boolean figFigHeight
    Boolean whiteWhiteSpace
  }
  command <<<
    mutplot \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-w" false="" wW} \
      ~{true="-s" false="" sS} \
      ~{true="-D" false="" dD} \
      ~{true="-d" false="" dD} \
      ~{true="-N" false="" nN} \
      ~{true="-m" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="--igv" false="" igvIgv} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--indel" false="" inInDel} \
      ~{true="--fig-width" false="" figFigWidth} \
      ~{true="--fig-height" false="" figFigHeight} \
      ~{true="--white-space" false="" whiteWhiteSpace}
  >>>
}