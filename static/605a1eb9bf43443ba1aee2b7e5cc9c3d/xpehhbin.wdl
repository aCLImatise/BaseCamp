version 1.0

task Xpehhbin {
  input {
    Boolean hapaHapa
    Boolean hapHapB
    Boolean mapMap
    Boolean outOut
    Boolean cutCutOff
    Boolean minMinMaf
    Boolean scaleScale
    Boolean binBin
    Boolean binBinOm
    Boolean maxMaxExtend
  }
  command <<<
    xpehhbin \
      ~{true="--hapA" false="" hapaHapa} \
      ~{true="--hapB" false="" hapHapB} \
      ~{true="--map" false="" mapMap} \
      ~{true="--out" false="" outOut} \
      ~{true="--cutoff" false="" cutCutOff} \
      ~{true="--minmaf" false="" minMinMaf} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--bin" false="" binBin} \
      ~{true="--binom" false="" binBinOm} \
      ~{true="--max-extend" false="" maxMaxExtend}
  >>>
}