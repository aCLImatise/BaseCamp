version 1.0

task SegmentationFoldUtilsEstimateEnergy {
  input {
    File tempTempDir
    String segmentationSegmentationFold
    File xmlXmlFile
    Int threadsThreads
    Float precisionPrecision
    Int randomizeRandomize
    File sequencesSequencesFromFastAFile
    String? optionsOptions
    String? dbnDbnOutputFile
  }
  command <<<
    segmentation-fold-utils estimate-energy \
      ~{optionsOptions} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(segmentationSegmentationFold) then ("--segmentation-fold " +  '"' + segmentationSegmentationFold + '"') else ""} \
      ~{if defined(xmlXmlFile) then ("--xml-file " +  '"' + xmlXmlFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(randomizeRandomize) then ("--randomize " +  '"' + randomizeRandomize + '"') else ""} \
      ~{if defined(sequencesSequencesFromFastAFile) then ("--sequences-from-fasta-file " +  '"' + sequencesSequencesFromFastAFile + '"') else ""} \
      ~{dbnDbnOutputFile}
  >>>
}