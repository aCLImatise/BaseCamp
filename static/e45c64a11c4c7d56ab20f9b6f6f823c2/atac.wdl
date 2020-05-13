version 1.0

task Atac.pl {
  input {
    File genomeGenomeDir
    String numNumSegments
    String numNumSegments
    String numNumThreads
    Boolean merylMerylOnly
    String merylMerylThreads
    Boolean sameSameSpecies
    Boolean crossCrossSpecies
    String segmentSegmentId
  }
  command <<<
    atac.pl \
      ~{if defined(genomeGenomeDir) then ("-genomedir " +  '"' + genomeGenomeDir + '"') else ""} \
      ~{if defined(numNumSegments) then ("-numsegments " +  '"' + numNumSegments + '"') else ""} \
      ~{if defined(numNumSegments) then ("-numsegments " +  '"' + numNumSegments + '"') else ""} \
      ~{if defined(numNumThreads) then ("-numthreads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="-merylonly" false="" merylMerylOnly} \
      ~{if defined(merylMerylThreads) then ("-merylthreads " +  '"' + merylMerylThreads + '"') else ""} \
      ~{true="-samespecies" false="" sameSameSpecies} \
      ~{true="-crossspecies" false="" crossCrossSpecies} \
      ~{if defined(segmentSegmentId) then ("-segmentid " +  '"' + segmentSegmentId + '"') else ""}
  >>>
}