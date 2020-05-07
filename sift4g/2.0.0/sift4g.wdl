version 1.0

task Sift4g {
  input {
    File queryQuery
    File databaseDatabase
    Int gapGapOpen
    Int gapGapExtend
    String matrixMatrix
    Float evalueEvalue
    Int maxMaxAligns
    String algorithmAlgorithm
    Int cardsCards
    String outOut
    Boolean subSubResults
    String outOutFmt
    Int kmKmErLength
    Int maxMaxCandidates
    Float medianMedianThreshold
    String substSubst
    Int seqSeqId
    Int threadsThreads
  }
  command <<<
    sift4g \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(maxMaxAligns) then ("--max-aligns " +  '"' + maxMaxAligns + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(cardsCards) then ("--cards " +  '"' + cardsCards + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--sub-results" false="" subSubResults} \
      ~{if defined(outOutFmt) then ("--outfmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(kmKmErLength) then ("--kmer-length " +  '"' + kmKmErLength + '"') else ""} \
      ~{if defined(maxMaxCandidates) then ("--max-candidates " +  '"' + maxMaxCandidates + '"') else ""} \
      ~{if defined(medianMedianThreshold) then ("--median-threshold " +  '"' + medianMedianThreshold + '"') else ""} \
      ~{if defined(substSubst) then ("--subst " +  '"' + substSubst + '"') else ""} \
      ~{if defined(seqSeqId) then ("--seq-id " +  '"' + seqSeqId + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}