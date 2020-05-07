version 1.0

task Hal2mafMP.py {
  input {
    String numNumProc
    String sliceSliceSize
    Boolean splitSplitBySequence
    String smallSmallSize
    String cacheCacheMdc
    String cacherCacherDc
    String cacheCacheBytes
    String cacheCacheW0
    Boolean inInMemory
    String refRefGenome
    String refRefSequence
    String refRefTargets
    String startStart
    Int lengthLength
    String rootRootGenome
    String targetTargetGenomes
    Int maxMaxRefGap
    Boolean noNoDupes
    Boolean noNoAncestors
    Boolean onlyOnlySequenceNames
    String? halHalFile
    String? mafMafFile
  }
  command <<<
    hal2mafMP.py \
      ~{halHalFile} \
      ~{if defined(numNumProc) then ("--numProc " +  '"' + numNumProc + '"') else ""} \
      ~{if defined(sliceSliceSize) then ("--sliceSize " +  '"' + sliceSliceSize + '"') else ""} \
      ~{true="--splitBySequence" false="" splitSplitBySequence} \
      ~{if defined(smallSmallSize) then ("--smallSize " +  '"' + smallSmallSize + '"') else ""} \
      ~{if defined(cacheCacheMdc) then ("--cacheMDC " +  '"' + cacheCacheMdc + '"') else ""} \
      ~{if defined(cacherCacherDc) then ("--cacheRDC " +  '"' + cacherCacherDc + '"') else ""} \
      ~{if defined(cacheCacheBytes) then ("--cacheBytes " +  '"' + cacheCacheBytes + '"') else ""} \
      ~{if defined(cacheCacheW0) then ("--cacheW0 " +  '"' + cacheCacheW0 + '"') else ""} \
      ~{true="--inMemory" false="" inInMemory} \
      ~{if defined(refRefGenome) then ("--refGenome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(refRefSequence) then ("--refSequence " +  '"' + refRefSequence + '"') else ""} \
      ~{if defined(refRefTargets) then ("--refTargets " +  '"' + refRefTargets + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(rootRootGenome) then ("--rootGenome " +  '"' + rootRootGenome + '"') else ""} \
      ~{if defined(targetTargetGenomes) then ("--targetGenomes " +  '"' + targetTargetGenomes + '"') else ""} \
      ~{if defined(maxMaxRefGap) then ("--maxRefGap " +  '"' + maxMaxRefGap + '"') else ""} \
      ~{true="--noDupes" false="" noNoDupes} \
      ~{true="--noAncestors" false="" noNoAncestors} \
      ~{true="--onlySequenceNames" false="" onlyOnlySequenceNames} \
      ~{mafMafFile}
  >>>
}