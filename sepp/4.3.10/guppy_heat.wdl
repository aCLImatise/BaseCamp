version 1.0

task GuppyHeat {
  input {
    Boolean oO
    Boolean outOutDir
    Boolean prefixPrefix
    Boolean cC
    Boolean minMinFat
    Boolean totalTotalWidth
    Boolean widthWidthFactor
    Boolean nodeNodeNumbers
    Boolean grayGrayBlack
    Boolean minMinWidth
    Boolean helpHelp
  }
  command <<<
    guppy heat \
      ~{true="-o" false="" oO} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="-c" false="" cC} \
      ~{true="--min-fat" false="" minMinFat} \
      ~{true="--total-width" false="" totalTotalWidth} \
      ~{true="--width-factor" false="" widthWidthFactor} \
      ~{true="--node-numbers" false="" nodeNodeNumbers} \
      ~{true="--gray-black" false="" grayGrayBlack} \
      ~{true="--min-width" false="" minMinWidth} \
      ~{true="--help" false="" helpHelp}
  >>>
}