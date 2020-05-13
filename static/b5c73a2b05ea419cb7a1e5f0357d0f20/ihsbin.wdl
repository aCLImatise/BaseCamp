version 1.0

task Ihsbin {
  input {
    Boolean hapHap
    Boolean mapMap
    Boolean outOut
    Boolean cutCutOff
    Boolean minMinMaf
    Boolean scaleScale
    Boolean binBin
    Boolean maxMaxExtend
    Boolean binBinOm
  }
  command <<<
    ihsbin \
      ~{true="--hap" false="" hapHap} \
      ~{true="--map" false="" mapMap} \
      ~{true="--out" false="" outOut} \
      ~{true="--cutoff" false="" cutCutOff} \
      ~{true="--minmaf" false="" minMinMaf} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--bin" false="" binBin} \
      ~{true="--max-extend" false="" maxMaxExtend} \
      ~{true="--binom" false="" binBinOm}
  >>>
}