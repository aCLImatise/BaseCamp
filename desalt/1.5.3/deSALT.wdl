version 1.0

task DeSALT {
  input {
    Boolean threadThread
    Boolean indexIndexKmEr
    Boolean seedingSeedingLMer
    Boolean localLocalHashKmEr
    Boolean seedSeedStep
    Boolean batchBatchSize
    Boolean maxMaxUniPos
    Boolean maxMaxReadLen
    Boolean minMinFragDis
    Boolean maxMaxIntronLen
    Boolean minMinChainScore
    Boolean strandStrandDiff
    Boolean maxMaxReadGap
    Boolean secondarySecondaryRatio
    Boolean eEShift
    Boolean transTransStrand
    Boolean gtfGtf
    Boolean readReadType
    Boolean openOpenPen
    Boolean extExtPen
    Boolean matchMatchScore
    Boolean misMisScore
    Boolean zZDrop
    Boolean bandBandWidth
    Boolean nonNonCan
    Boolean topTopNumAln
    Boolean withoutWithoutQual
    Boolean tempTempFilePerFix
    Boolean outputOutput
    String? indexIndex
    String? alnAln
  }
  command <<<
    deSALT \
      ~{indexIndex} \
      ~{true="--thread" false="" threadThread} \
      ~{true="--index-kmer" false="" indexIndexKmEr} \
      ~{true="--seeding-lmer" false="" seedingSeedingLMer} \
      ~{true="--local-hash-kmer" false="" localLocalHashKmEr} \
      ~{true="--seed-step" false="" seedSeedStep} \
      ~{true="--batch-size" false="" batchBatchSize} \
      ~{true="--max-uni-pos" false="" maxMaxUniPos} \
      ~{true="--max-readlen" false="" maxMaxReadLen} \
      ~{true="--min-frag-dis" false="" minMinFragDis} \
      ~{true="--max-intron-len" false="" maxMaxIntronLen} \
      ~{true="--min-chain-score" false="" minMinChainScore} \
      ~{true="--strand-diff" false="" strandStrandDiff} \
      ~{true="--max-read-gap" false="" maxMaxReadGap} \
      ~{true="--secondary-ratio" false="" secondarySecondaryRatio} \
      ~{true="--e-shift" false="" eEShift} \
      ~{true="--trans-strand" false="" transTransStrand} \
      ~{true="--gtf" false="" gtfGtf} \
      ~{true="--read-type" false="" readReadType} \
      ~{true="--open-pen" false="" openOpenPen} \
      ~{true="--ext-pen" false="" extExtPen} \
      ~{true="--match-score" false="" matchMatchScore} \
      ~{true="--mis-score" false="" misMisScore} \
      ~{true="--zdrop" false="" zZDrop} \
      ~{true="--band-width" false="" bandBandWidth} \
      ~{true="--noncan" false="" nonNonCan} \
      ~{true="--top-num-aln" false="" topTopNumAln} \
      ~{true="--without-qual" false="" withoutWithoutQual} \
      ~{true="--temp-file-perfix" false="" tempTempFilePerFix} \
      ~{true="--output" false="" outputOutput} \
      ~{alnAln}
  >>>
}