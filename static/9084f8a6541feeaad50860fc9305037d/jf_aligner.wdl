version 1.0

task JfAligner {
  input {
    String psaPsaMin
    String threadsThreads
    Int stretchStretchConstant
    String stretchStretchFactor
    String stretchStretchCap
    String windowWindowSize
    Boolean forwardForward
    String basesBasesMatching
    String mersMersMatching
    File detailsDetails
    File coordsCoords
    Boolean maxMaxMatch
    Boolean noNoHeader
    String maxMaxCount
    File unitUnitIgsLengths
    File unitUnitIgsSequences
    Boolean compactCompact
    String kKMer
    File superSuperReads
    File pacPacBio
    String? jfJfAlignerCmdline
  }
  command <<<
    jf_aligner \
      ~{jfJfAlignerCmdline} \
      ~{if defined(psaPsaMin) then ("--psa-min " +  '"' + psaPsaMin + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(stretchStretchConstant) then ("--stretch-constant " +  '"' + stretchStretchConstant + '"') else ""} \
      ~{if defined(stretchStretchFactor) then ("--stretch-factor " +  '"' + stretchStretchFactor + '"') else ""} \
      ~{if defined(stretchStretchCap) then ("--stretch-cap " +  '"' + stretchStretchCap + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{if defined(basesBasesMatching) then ("--bases-matching " +  '"' + basesBasesMatching + '"') else ""} \
      ~{if defined(mersMersMatching) then ("--mers-matching " +  '"' + mersMersMatching + '"') else ""} \
      ~{if defined(detailsDetails) then ("--details " +  '"' + detailsDetails + '"') else ""} \
      ~{if defined(coordsCoords) then ("--coords " +  '"' + coordsCoords + '"') else ""} \
      ~{true="--max-match" false="" maxMaxMatch} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{if defined(maxMaxCount) then ("--max-count " +  '"' + maxMaxCount + '"') else ""} \
      ~{if defined(unitUnitIgsLengths) then ("--unitigs-lengths " +  '"' + unitUnitIgsLengths + '"') else ""} \
      ~{if defined(unitUnitIgsSequences) then ("--unitigs-sequences " +  '"' + unitUnitIgsSequences + '"') else ""} \
      ~{true="--compact" false="" compactCompact} \
      ~{if defined(kKMer) then ("--k-mer " +  '"' + kKMer + '"') else ""} \
      ~{if defined(superSuperReads) then ("--superreads " +  '"' + superSuperReads + '"') else ""} \
      ~{if defined(pacPacBio) then ("--pacbio " +  '"' + pacPacBio + '"') else ""}
  >>>
}