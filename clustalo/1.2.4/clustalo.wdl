version 1.0

task Clustalo {
  input {
    Boolean inInFile
    File hmmHmmIn
    File hmmHmmBatch
    Boolean deDeAlign
    File profileProfile1
    File profileProfile2
    Boolean isIsProfile
    String seqtypeSeqtype
    Boolean inInFmt
    File distDistMatIn
    File distDistMatOut
    File guideGuideTreeIn
    File guideGuideTreeOut
    Boolean pilePileUp
    Boolean fullFull
    Boolean fullFullIter
    String clusterClusterSize
    File clusteringClusteringOut
    String transTrans
    File posteriorPosteriorOut
    Boolean useUseKimura
    Boolean percentPercentId
    Boolean outfileOutfile
    Boolean outOutFmt
    Boolean residueResidueNumber
    String wrapWrap
    String outputOutputOrder
    String iterationsIterations
    String maxMaxGuideTreeIterations
    String maxMaxHmmIterations
    String maxMaxNumSeq
    String maxMaxSeqLen
    Boolean autoAuto
    String threadsThreads
    File pseudoPseudo
    File logLog
    Boolean verboseVerbose
    Boolean longLongVersion
    Boolean forceForce
  }
  command <<<
    clustalo \
      ~{true="--infile" false="" inInFile} \
      ~{if defined(hmmHmmIn) then ("--hmm-in " +  '"' + hmmHmmIn + '"') else ""} \
      ~{if defined(hmmHmmBatch) then ("--hmm-batch " +  '"' + hmmHmmBatch + '"') else ""} \
      ~{true="--dealign" false="" deDeAlign} \
      ~{if defined(profileProfile1) then ("--profile1 " +  '"' + profileProfile1 + '"') else ""} \
      ~{if defined(profileProfile2) then ("--profile2 " +  '"' + profileProfile2 + '"') else ""} \
      ~{true="--is-profile" false="" isIsProfile} \
      ~{if defined(seqtypeSeqtype) then ("--seqtype " +  '"' + seqtypeSeqtype + '"') else ""} \
      ~{true="--infmt" false="" inInFmt} \
      ~{if defined(distDistMatIn) then ("--distmat-in " +  '"' + distDistMatIn + '"') else ""} \
      ~{if defined(distDistMatOut) then ("--distmat-out " +  '"' + distDistMatOut + '"') else ""} \
      ~{if defined(guideGuideTreeIn) then ("--guidetree-in " +  '"' + guideGuideTreeIn + '"') else ""} \
      ~{if defined(guideGuideTreeOut) then ("--guidetree-out " +  '"' + guideGuideTreeOut + '"') else ""} \
      ~{true="--pileup" false="" pilePileUp} \
      ~{true="--full" false="" fullFull} \
      ~{true="--full-iter" false="" fullFullIter} \
      ~{if defined(clusterClusterSize) then ("--cluster-size " +  '"' + clusterClusterSize + '"') else ""} \
      ~{if defined(clusteringClusteringOut) then ("--clustering-out " +  '"' + clusteringClusteringOut + '"') else ""} \
      ~{if defined(transTrans) then ("--trans " +  '"' + transTrans + '"') else ""} \
      ~{if defined(posteriorPosteriorOut) then ("--posterior-out " +  '"' + posteriorPosteriorOut + '"') else ""} \
      ~{true="--use-kimura" false="" useUseKimura} \
      ~{true="--percent-id" false="" percentPercentId} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--outfmt" false="" outOutFmt} \
      ~{true="--residuenumber" false="" residueResidueNumber} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{if defined(outputOutputOrder) then ("--output-order " +  '"' + outputOutputOrder + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(maxMaxGuideTreeIterations) then ("--max-guidetree-iterations " +  '"' + maxMaxGuideTreeIterations + '"') else ""} \
      ~{if defined(maxMaxHmmIterations) then ("--max-hmm-iterations " +  '"' + maxMaxHmmIterations + '"') else ""} \
      ~{if defined(maxMaxNumSeq) then ("--maxnumseq " +  '"' + maxMaxNumSeq + '"') else ""} \
      ~{if defined(maxMaxSeqLen) then ("--maxseqlen " +  '"' + maxMaxSeqLen + '"') else ""} \
      ~{true="--auto" false="" autoAuto} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("--pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--long-version" false="" longLongVersion} \
      ~{true="--force" false="" forceForce}
  >>>
}