version 1.0

task Lohhla {
  input {
    String patientPatientId
    String outputOutputDir
    String normalNormalBamFile
    String bamBamDir
    String hlaHlaPath
    String hlaHlaFastALoc
    String copyCopyNumLoc
    String overrideOverrideDir
    String minMinCoverageFilter
    String kmKmErSize
    String numNumMismatch
    String mappingMappingStep
    String fishingFishingStep
    String plottingPlottingStep
    String coverageCoverageStep
    String cleanupCleanup
    String novoNovoDir
    String gGAtkDir
    String hlaHlaExonLoc
    String ignoreIgnoreWarnings
  }
  command <<<
    lohhla \
      ~{if defined(patientPatientId) then ("--patientId " +  '"' + patientPatientId + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(normalNormalBamFile) then ("--normalBAMfile " +  '"' + normalNormalBamFile + '"') else ""} \
      ~{if defined(bamBamDir) then ("--BAMDir " +  '"' + bamBamDir + '"') else ""} \
      ~{if defined(hlaHlaPath) then ("--hlaPath " +  '"' + hlaHlaPath + '"') else ""} \
      ~{if defined(hlaHlaFastALoc) then ("--HLAfastaLoc " +  '"' + hlaHlaFastALoc + '"') else ""} \
      ~{if defined(copyCopyNumLoc) then ("--CopyNumLoc " +  '"' + copyCopyNumLoc + '"') else ""} \
      ~{if defined(overrideOverrideDir) then ("--overrideDir " +  '"' + overrideOverrideDir + '"') else ""} \
      ~{if defined(minMinCoverageFilter) then ("--minCoverageFilter " +  '"' + minMinCoverageFilter + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(numNumMismatch) then ("--numMisMatch " +  '"' + numNumMismatch + '"') else ""} \
      ~{if defined(mappingMappingStep) then ("--mappingStep " +  '"' + mappingMappingStep + '"') else ""} \
      ~{if defined(fishingFishingStep) then ("--fishingStep " +  '"' + fishingFishingStep + '"') else ""} \
      ~{if defined(plottingPlottingStep) then ("--plottingStep " +  '"' + plottingPlottingStep + '"') else ""} \
      ~{if defined(coverageCoverageStep) then ("--coverageStep " +  '"' + coverageCoverageStep + '"') else ""} \
      ~{if defined(cleanupCleanup) then ("--cleanUp " +  '"' + cleanupCleanup + '"') else ""} \
      ~{if defined(novoNovoDir) then ("--novoDir " +  '"' + novoNovoDir + '"') else ""} \
      ~{if defined(gGAtkDir) then ("--gatkDir " +  '"' + gGAtkDir + '"') else ""} \
      ~{if defined(hlaHlaExonLoc) then ("--HLAexonLoc " +  '"' + hlaHlaExonLoc + '"') else ""} \
      ~{if defined(ignoreIgnoreWarnings) then ("--ignoreWarnings " +  '"' + ignoreIgnoreWarnings + '"') else ""}
  >>>
}