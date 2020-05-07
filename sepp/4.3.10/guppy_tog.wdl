version 1.0

task GuppyTog {
  input {
    Boolean ppPp
    Boolean oO
    Boolean outOutDir
    Boolean prefixPrefix
    Boolean xmlXml
    Boolean nodeNodeNumbers
    Boolean helpHelp
  }
  command <<<
    guppy tog \
      ~{true="--pp" false="" ppPp} \
      ~{true="-o" false="" oO} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--xml" false="" xmlXml} \
      ~{true="--node-numbers" false="" nodeNodeNumbers} \
      ~{true="--help" false="" helpHelp}
  >>>
}