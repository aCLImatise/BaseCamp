version 1.0

task Popscle {
  input {
    Boolean demuxDemuxLet
    Boolean freeFreeMuxLetOld
    Boolean freeFreeMuxLet
    Boolean dscDscPileUp
    Boolean plpPlpMakeDgeMatrix
  }
  command <<<
    popscle \
      ~{true="- demuxlet" false="" demuxDemuxLet} \
      ~{true="- freemuxlet-old" false="" freeFreeMuxLetOld} \
      ~{true="- freemuxlet" false="" freeFreeMuxLet} \
      ~{true="- dsc-pileup" false="" dscDscPileUp} \
      ~{true="- plp-make-dge-matrix" false="" plpPlpMakeDgeMatrix}
  >>>
}