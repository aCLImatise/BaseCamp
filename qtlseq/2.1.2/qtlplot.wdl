version 1.0

task Qtlplot {
  input {
    Boolean vV
    Boolean n1N1
    Boolean n2N2
    Boolean oO
    Boolean fF
    Boolean tT
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
    qtlplot \
      ~{true="-v" false="" vV} \
      ~{true="-n1" false="" n1N1} \
      ~{true="-n2" false="" n2N2} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF} \
      ~{true="-t" false="" tT} \
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