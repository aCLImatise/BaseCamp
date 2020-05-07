version 1.0

task HicBuildMatrix {
  input {
    String samSamFiles
    File outOutFilename
    Directory qcQcFolder
    Int minMinDistance
    Int maxMaxDistance
    Int maxMaxLibraryInsertSize
    String restrictionRestrictionSequence
    String genomeGenomeAssembly
    String danglingDanglingSequence
    String regionRegion
    Boolean keepKeepSelfCircles
    Int minMinMappingQuality
    String threadsThreads
    String inputInputBufferSize
    Boolean doDoTestRun
    String doDoTestRunLines
    Boolean skipSkipDuplicationCheck
  }
  command <<<
    hicBuildMatrix \
      ~{if defined(samSamFiles) then ("--samFiles " +  '"' + samSamFiles + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(qcQcFolder) then ("--QCfolder " +  '"' + qcQcFolder + '"') else ""} \
      ~{if defined(minMinDistance) then ("--minDistance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--maxDistance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(maxMaxLibraryInsertSize) then ("--maxLibraryInsertSize " +  '"' + maxMaxLibraryInsertSize + '"') else ""} \
      ~{if defined(restrictionRestrictionSequence) then ("--restrictionSequence " +  '"' + restrictionRestrictionSequence + '"') else ""} \
      ~{if defined(genomeGenomeAssembly) then ("--genomeAssembly " +  '"' + genomeGenomeAssembly + '"') else ""} \
      ~{if defined(danglingDanglingSequence) then ("--danglingSequence " +  '"' + danglingDanglingSequence + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--keepSelfCircles" false="" keepKeepSelfCircles} \
      ~{if defined(minMinMappingQuality) then ("--minMappingQuality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(inputInputBufferSize) then ("--inputBufferSize " +  '"' + inputInputBufferSize + '"') else ""} \
      ~{true="--doTestRun" false="" doDoTestRun} \
      ~{if defined(doDoTestRunLines) then ("--doTestRunLines " +  '"' + doDoTestRunLines + '"') else ""} \
      ~{true="--skipDuplicationCheck" false="" skipSkipDuplicationCheck}
  >>>
}