version 1.0

task CreateMegaReads {
  input {
    String sizeSize
    String merMer
    String fineFineMer
    String psaPsaMin
    File unitUnitIgsLengths
    File unitUnitIgsSequences
    String kKMer
    String threadsThreads
    File outputOutput
    File dotDot
    Int stretchStretchConstant
    String stretchStretchFactor
    String stretchStretchCap
    String windowWindowSize
    String overlapOverlapPlay
    String errorsErrors
    String basesBasesMatching
    String mersMersMatching
    Boolean maxMaxMatch
    String maxMaxCount
    Boolean basesBases
    String densityDensity
    String minMinLength
    String tilingTiling
    String trimTrim
    File superSuperReads
    File pacPacBio
    String? createCreateMegaReadsCmdline
  }
  command <<<
    create_mega_reads \
      ~{createCreateMegaReadsCmdline} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""} \
      ~{if defined(fineFineMer) then ("--fine-mer " +  '"' + fineFineMer + '"') else ""} \
      ~{if defined(psaPsaMin) then ("--psa-min " +  '"' + psaPsaMin + '"') else ""} \
      ~{if defined(unitUnitIgsLengths) then ("--unitigs-lengths " +  '"' + unitUnitIgsLengths + '"') else ""} \
      ~{if defined(unitUnitIgsSequences) then ("--unitigs-sequences " +  '"' + unitUnitIgsSequences + '"') else ""} \
      ~{if defined(kKMer) then ("--k-mer " +  '"' + kKMer + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dotDot) then ("--dot " +  '"' + dotDot + '"') else ""} \
      ~{if defined(stretchStretchConstant) then ("--stretch-constant " +  '"' + stretchStretchConstant + '"') else ""} \
      ~{if defined(stretchStretchFactor) then ("--stretch-factor " +  '"' + stretchStretchFactor + '"') else ""} \
      ~{if defined(stretchStretchCap) then ("--stretch-cap " +  '"' + stretchStretchCap + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(overlapOverlapPlay) then ("--overlap-play " +  '"' + overlapOverlapPlay + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""} \
      ~{if defined(basesBasesMatching) then ("--bases-matching " +  '"' + basesBasesMatching + '"') else ""} \
      ~{if defined(mersMersMatching) then ("--mers-matching " +  '"' + mersMersMatching + '"') else ""} \
      ~{true="--max-match" false="" maxMaxMatch} \
      ~{if defined(maxMaxCount) then ("--max-count " +  '"' + maxMaxCount + '"') else ""} \
      ~{true="--bases" false="" basesBases} \
      ~{if defined(densityDensity) then ("--density " +  '"' + densityDensity + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(tilingTiling) then ("--tiling " +  '"' + tilingTiling + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(superSuperReads) then ("--superreads " +  '"' + superSuperReads + '"') else ""} \
      ~{if defined(pacPacBio) then ("--pacbio " +  '"' + pacPacBio + '"') else ""}
  >>>
}