version 1.0

task PlassNuclassemble {
  input {
    Int alphAlphSize
    Int maskMask
    Int maskMaskLowerCase
    Int kK
    String splitSplitMemoryLimit
    Boolean addAddSelfMatches
    Float minMinSeqId
    Int covCovMode
    Float cC
    Float eE
    Boolean aA
    Int minMinAlnLen
    Int seqSeqIdMode
    Int kmKmErPerSeq
    Boolean adjustAdjustKmErLen
    Int hashHashShift
    Boolean includeIncludeOnlyExtendable
    Boolean ignoreIgnoreMultiKmEr
    Int numNumIterations
    Boolean cycleCycleCheck
    Int minMinContigLen
    Float clustClustThr
    Boolean removeRemoveTmpFiles
    Int deleteDeleteTmpInc
    Int reReScoreMode
    Boolean wrappedWrappedScoring
    Boolean chopChopCycle
    String mpiMpiRunner
    String subSubMat
    Int maxMaxSeqLen
    Int threadsThreads
    Int compressedCompressed
    Int vV
    Int dbDbLoadMode
    Float kmKmErPerSeqScale
    Boolean filterFilterHits
    Int sortSortResults
  }
  command <<<
    plass nuclassemble \
      ~{if defined(alphAlphSize) then ("--alph-size " +  '"' + alphAlphSize + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(maskMaskLowerCase) then ("--mask-lower-case " +  '"' + maskMaskLowerCase + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(splitSplitMemoryLimit) then ("--split-memory-limit " +  '"' + splitSplitMemoryLimit + '"') else ""} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{if defined(minMinSeqId) then ("--min-seq-id " +  '"' + minMinSeqId + '"') else ""} \
      ~{if defined(covCovMode) then ("--cov-mode " +  '"' + covCovMode + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(minMinAlnLen) then ("--min-aln-len " +  '"' + minMinAlnLen + '"') else ""} \
      ~{if defined(seqSeqIdMode) then ("--seq-id-mode " +  '"' + seqSeqIdMode + '"') else ""} \
      ~{if defined(kmKmErPerSeq) then ("--kmer-per-seq " +  '"' + kmKmErPerSeq + '"') else ""} \
      ~{true="--adjust-kmer-len" false="" adjustAdjustKmErLen} \
      ~{if defined(hashHashShift) then ("--hash-shift " +  '"' + hashHashShift + '"') else ""} \
      ~{true="--include-only-extendable" false="" includeIncludeOnlyExtendable} \
      ~{true="--ignore-multi-kmer" false="" ignoreIgnoreMultiKmEr} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{true="--cycle-check" false="" cycleCycleCheck} \
      ~{if defined(minMinContigLen) then ("--min-contig-len " +  '"' + minMinContigLen + '"') else ""} \
      ~{if defined(clustClustThr) then ("--clust-thr " +  '"' + clustClustThr + '"') else ""} \
      ~{true="--remove-tmp-files" false="" removeRemoveTmpFiles} \
      ~{if defined(deleteDeleteTmpInc) then ("--delete-tmp-inc " +  '"' + deleteDeleteTmpInc + '"') else ""} \
      ~{if defined(reReScoreMode) then ("--rescore-mode " +  '"' + reReScoreMode + '"') else ""} \
      ~{true="--wrapped-scoring" false="" wrappedWrappedScoring} \
      ~{true="--chop-cycle" false="" chopChopCycle} \
      ~{if defined(mpiMpiRunner) then ("--mpi-runner " +  '"' + mpiMpiRunner + '"') else ""} \
      ~{if defined(subSubMat) then ("--sub-mat " +  '"' + subSubMat + '"') else ""} \
      ~{if defined(maxMaxSeqLen) then ("--max-seq-len " +  '"' + maxMaxSeqLen + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(compressedCompressed) then ("--compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(dbDbLoadMode) then ("--db-load-mode " +  '"' + dbDbLoadMode + '"') else ""} \
      ~{if defined(kmKmErPerSeqScale) then ("--kmer-per-seq-scale " +  '"' + kmKmErPerSeqScale + '"') else ""} \
      ~{true="--filter-hits" false="" filterFilterHits} \
      ~{if defined(sortSortResults) then ("--sort-results " +  '"' + sortSortResults + '"') else ""}
  >>>
}