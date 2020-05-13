version 1.0

task Ehhbin {
  input {
    Boolean hapHap
    Boolean mapMap
    Boolean locusLocus
    Boolean cutCutOff
    Boolean minMinMaf
    Boolean scaleScale
    Boolean maxMaxExtend
    Boolean binBinOm
  }
  command <<<
    ehhbin \
      ~{true="--hap" false="" hapHap} \
      ~{true="--map" false="" mapMap} \
      ~{true="--locus" false="" locusLocus} \
      ~{true="--cutoff" false="" cutCutOff} \
      ~{true="--minmaf" false="" minMinMaf} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--max-extend" false="" maxMaxExtend} \
      ~{true="--binom" false="" binBinOm}
  >>>
}