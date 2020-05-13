version 1.0

task GuppyFat {
  input {
    Boolean oO
    Boolean outOutDir
    Boolean prefixPrefix
    Boolean pointPointMass
    Boolean ppPp
    Boolean cC
    Boolean minMinFat
    Boolean totalTotalWidth
    Boolean widthWidthFactor
    Boolean nodeNodeNumbers
    Boolean averageAverage
    Boolean edEdPl
    Boolean helpHelp
  }
  command <<<
    guppy fat \
      ~{true="-o" false="" oO} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--pp" false="" ppPp} \
      ~{true="-c" false="" cC} \
      ~{true="--min-fat" false="" minMinFat} \
      ~{true="--total-width" false="" totalTotalWidth} \
      ~{true="--width-factor" false="" widthWidthFactor} \
      ~{true="--node-numbers" false="" nodeNodeNumbers} \
      ~{true="--average" false="" averageAverage} \
      ~{true="--edpl" false="" edEdPl} \
      ~{true="--help" false="" helpHelp}
  >>>
}