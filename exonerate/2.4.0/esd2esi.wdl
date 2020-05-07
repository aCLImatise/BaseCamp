version 1.0

task Esd2esi {
  input {
    Boolean translateTranslate
    Boolean dnaDnaWordLen
    Boolean proteinProteinWordLen
    Boolean wordWordJump
    Boolean wordWordAmbiguity
    Boolean saturateSaturateThreshold
    Boolean memoryMemoryLimit
  }
  command <<<
    esd2esi \
      ~{true="--translate" false="" translateTranslate} \
      ~{true="--dnawordlen" false="" dnaDnaWordLen} \
      ~{true="--proteinwordlen" false="" proteinProteinWordLen} \
      ~{true="--wordjump" false="" wordWordJump} \
      ~{true="--wordambiguity" false="" wordWordAmbiguity} \
      ~{true="--saturatethreshold" false="" saturateSaturateThreshold} \
      ~{true="--memorylimit" false="" memoryMemoryLimit}
  >>>
}