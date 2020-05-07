version 1.0

task Hal2mafSplit.pl {
  input {
    String halHalFile
    String refRefGenome
    Boolean keepKeepDupes
    Boolean keepKeepAncestors
    String refRefSequence
    String outdirOutdir
    String chunksizeChunksize
    String overlapOverlap
    String cpusCpus
    String halHalExecDir
    String noNoSplitList
  }
  command <<<
    hal2maf_split.pl \
      ~{if defined(halHalFile) then ("--halfile " +  '"' + halHalFile + '"') else ""} \
      ~{if defined(refRefGenome) then ("--refGenome " +  '"' + refRefGenome + '"') else ""} \
      ~{true="--keepDupes" false="" keepKeepDupes} \
      ~{true="--keepAncestors" false="" keepKeepAncestors} \
      ~{if defined(refRefSequence) then ("--refSequence " +  '"' + refRefSequence + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(halHalExecDir) then ("--hal_exec_dir " +  '"' + halHalExecDir + '"') else ""} \
      ~{if defined(noNoSplitList) then ("--no_split_list " +  '"' + noNoSplitList + '"') else ""}
  >>>
}