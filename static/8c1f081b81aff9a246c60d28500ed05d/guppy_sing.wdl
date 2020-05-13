version 1.0

task GuppySing {
  input {
    Boolean pointPointMass
    Boolean ppPp
    Boolean oO
    Boolean outOutDir
    Boolean prefixPrefix
    Boolean minMinFat
    Boolean totalTotalWidth
    Boolean widthWidthFactor
    Boolean nodeNodeNumbers
    Boolean xmlXml
    Boolean nodeNodeNumbers
    Boolean helpHelp
  }
  command <<<
    guppy sing \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--pp" false="" ppPp} \
      ~{true="-o" false="" oO} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--min-fat" false="" minMinFat} \
      ~{true="--total-width" false="" totalTotalWidth} \
      ~{true="--width-factor" false="" widthWidthFactor} \
      ~{true="--node-numbers" false="" nodeNodeNumbers} \
      ~{true="--xml" false="" xmlXml} \
      ~{true="--node-numbers" false="" nodeNodeNumbers} \
      ~{true="--help" false="" helpHelp}
  >>>
}