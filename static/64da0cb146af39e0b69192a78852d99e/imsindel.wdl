version 1.0

task Imsindel {
  input {
    Boolean outOutD
    Int inInDelSize
    Boolean reReFfa
    Boolean baseBaseQ
    Boolean mapqMapq
    Boolean withinWithin
    Boolean pairPairWithin
    Boolean altAltReadDepth
    Boolean supportSupportReads
    Boolean clipClipLength
    Boolean supportSupportClipLength
    Boolean glGlSearch
    Boolean glGlSearchMat
    Boolean maffMaffT
    Boolean samSamTools
    Boolean tempTemp
    Boolean threadThread
    Boolean outputOutputConsensusSeq
    Boolean excludeExcludeRegion
  }
  command <<<
    imsindel \
      ~{true="--outd" false="" outOutD} \
      ~{if defined(inInDelSize) then ("--indelsize " +  '"' + inInDelSize + '"') else ""} \
      ~{true="--reffa" false="" reReFfa} \
      ~{true="--baseq" false="" baseBaseQ} \
      ~{true="--mapq" false="" mapqMapq} \
      ~{true="--within" false="" withinWithin} \
      ~{true="--pair-within" false="" pairPairWithin} \
      ~{true="--alt-read-depth" false="" altAltReadDepth} \
      ~{true="--support-reads" false="" supportSupportReads} \
      ~{true="--clip-length" false="" clipClipLength} \
      ~{true="--support-clip-length" false="" supportSupportClipLength} \
      ~{true="--glsearch" false="" glGlSearch} \
      ~{true="--glsearch-mat" false="" glGlSearchMat} \
      ~{true="--mafft" false="" maffMaffT} \
      ~{true="--samtools" false="" samSamTools} \
      ~{true="--temp" false="" tempTemp} \
      ~{true="--thread" false="" threadThread} \
      ~{true="--output-consensus-seq" false="" outputOutputConsensusSeq} \
      ~{true="--exclude-region" false="" excludeExcludeRegion}
  >>>
}