version 1.0

task CentreseqCore {
  input {
    File fastFastADir
    File outdirOutdir
    Int nNCpu
    Int nNCpuMeDoId
    Float minMinSeqId
    Float coverageCoverageLength
    Boolean meMeDoIdRepsEqs
    Boolean pairwisePairwise
    Boolean verboseVerbose
  }
  command <<<
    centreseq core \
      ~{if defined(fastFastADir) then ("--fasta-dir " +  '"' + fastFastADir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nNCpu) then ("--n-cpu " +  '"' + nNCpu + '"') else ""} \
      ~{if defined(nNCpuMeDoId) then ("--n-cpu-medoid " +  '"' + nNCpuMeDoId + '"') else ""} \
      ~{if defined(minMinSeqId) then ("--min-seq-id " +  '"' + minMinSeqId + '"') else ""} \
      ~{if defined(coverageCoverageLength) then ("--coverage-length " +  '"' + coverageCoverageLength + '"') else ""} \
      ~{true="--medoid-repseqs" false="" meMeDoIdRepsEqs} \
      ~{true="--pairwise" false="" pairwisePairwise} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}