version 1.0

task Cutadapt {
  input {
    Boolean debugDebug
    String coresCores
    String adapterAdapter
    String frontFront
    String anywhereAnywhere
    String errorErrorRate
    Boolean noNoIndels
    String timesTimes
    Int overlapOverlap
    Boolean matchMatchReadWildcards
    Boolean noNoMatchAdapterWildcards
    String actionAction
    Boolean revRevComp
    Int cutCut
    Boolean nextNextSeqTrim
    Boolean qQ
    String qualityQualityBase
    Int lengthLength
    Boolean trimTrimN
    String lengthLengthTag
    String stripStripSuffix
    String prefixPrefix
    String suffixSuffix
    Boolean zeroZeroCap
    String mM
    String mM
    String maxMaxN
    String maxMaxExpectedErrors
    Boolean discardDiscardTrimmed
    Boolean discardDiscardUntrimmed
    Boolean discardDiscardCasaVa
    Boolean quietQuiet
    String reportReport
    File outputOutput
    Boolean fastFastA
    Boolean zZ
    File infoInfoFile
    File restRestFile
    File wildcardWildcardFile
    File tooTooShortOutput
    File tooTooLongOutput
    File untrimmedUntrimmedOutput
    String aA
    String gG
    String bB
    Int uU
    File pairedPairedOutput
    Boolean pairPairAdapters
    Boolean pairPairFilter
    Boolean interleavedInterleaved
    File untrimmedUntrimmedPairedOutput
    File tooTooShortPairedOutput
    File tooTooLongPairedOutput
    String? inputInputFastQ
  }
  command <<<
    cutadapt \
      ~{inputInputFastQ} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(adapterAdapter) then ("--adapter " +  '"' + adapterAdapter + '"') else ""} \
      ~{if defined(frontFront) then ("--front " +  '"' + frontFront + '"') else ""} \
      ~{if defined(anywhereAnywhere) then ("--anywhere " +  '"' + anywhereAnywhere + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{true="--no-indels" false="" noNoIndels} \
      ~{if defined(timesTimes) then ("--times " +  '"' + timesTimes + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{true="--match-read-wildcards" false="" matchMatchReadWildcards} \
      ~{true="--no-match-adapter-wildcards" false="" noNoMatchAdapterWildcards} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(cutCut) then ("--cut " +  '"' + cutCut + '"') else ""} \
      ~{true="--nextseq-trim" false="" nextNextSeqTrim} \
      ~{true="-q" false="" qQ} \
      ~{if defined(qualityQualityBase) then ("--quality-base " +  '"' + qualityQualityBase + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--trim-n" false="" trimTrimN} \
      ~{if defined(lengthLengthTag) then ("--length-tag " +  '"' + lengthLengthTag + '"') else ""} \
      ~{if defined(stripStripSuffix) then ("--strip-suffix " +  '"' + stripStripSuffix + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero-cap" false="" zeroZeroCap} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(maxMaxN) then ("--max-n " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(maxMaxExpectedErrors) then ("--max-expected-errors " +  '"' + maxMaxExpectedErrors + '"') else ""} \
      ~{true="--discard-trimmed" false="" discardDiscardTrimmed} \
      ~{true="--discard-untrimmed" false="" discardDiscardUntrimmed} \
      ~{true="--discard-casava" false="" discardDiscardCasaVa} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="-Z" false="" zZ} \
      ~{if defined(infoInfoFile) then ("--info-file " +  '"' + infoInfoFile + '"') else ""} \
      ~{if defined(restRestFile) then ("--rest-file " +  '"' + restRestFile + '"') else ""} \
      ~{if defined(wildcardWildcardFile) then ("--wildcard-file " +  '"' + wildcardWildcardFile + '"') else ""} \
      ~{if defined(tooTooShortOutput) then ("--too-short-output " +  '"' + tooTooShortOutput + '"') else ""} \
      ~{if defined(tooTooLongOutput) then ("--too-long-output " +  '"' + tooTooLongOutput + '"') else ""} \
      ~{if defined(untrimmedUntrimmedOutput) then ("--untrimmed-output " +  '"' + untrimmedUntrimmedOutput + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(pairedPairedOutput) then ("--paired-output " +  '"' + pairedPairedOutput + '"') else ""} \
      ~{true="--pair-adapters" false="" pairPairAdapters} \
      ~{true="--pair-filter" false="" pairPairFilter} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{if defined(untrimmedUntrimmedPairedOutput) then ("--untrimmed-paired-output " +  '"' + untrimmedUntrimmedPairedOutput + '"') else ""} \
      ~{if defined(tooTooShortPairedOutput) then ("--too-short-paired-output " +  '"' + tooTooShortPairedOutput + '"') else ""} \
      ~{if defined(tooTooLongPairedOutput) then ("--too-long-paired-output " +  '"' + tooTooLongPairedOutput + '"') else ""}
  >>>
}