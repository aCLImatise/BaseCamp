version 1.0

task AnviProfile {
  input {
    String inputInputFile
    String contigsContigsDb
    Boolean blankBlankProfile
    String outputOutputDir
    Boolean overwriteOverwriteOutputDestinations
    String sampleSampleName
    Boolean reportReportVariabilityFull
    Boolean skipSkipSnvProfiling
    Boolean profileProfileSCvs
    String descriptionDescription
    Boolean clusterClusterContigs
    Boolean skipSkipHierarchicalClustering
    String distanceDistance
    String linkageLinkage
    Int minMinContigLength
    Int maxMaxContigLength
    Int minMinMeanCoverage
    Int minMinCoverageForVariability
    Boolean listListContigs
    File contigsContigsOfInterest
    String numNumThreads
    Int queueQueueSize
    Int writeWriteBufferSizePerThread
    Boolean forceForceMulti
  }
  command <<<
    anvi-profile \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{true="--blank-profile" false="" blankBlankProfile} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--overwrite-output-destinations" false="" overwriteOverwriteOutputDestinations} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{true="--report-variability-full" false="" reportReportVariabilityFull} \
      ~{true="--skip-SNV-profiling" false="" skipSkipSnvProfiling} \
      ~{true="--profile-SCVs" false="" profileProfileSCvs} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{true="--cluster-contigs" false="" clusterClusterContigs} \
      ~{true="--skip-hierarchical-clustering" false="" skipSkipHierarchicalClustering} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{if defined(minMinContigLength) then ("--min-contig-length " +  '"' + minMinContigLength + '"') else ""} \
      ~{if defined(maxMaxContigLength) then ("--max-contig-length " +  '"' + maxMaxContigLength + '"') else ""} \
      ~{if defined(minMinMeanCoverage) then ("--min-mean-coverage " +  '"' + minMinMeanCoverage + '"') else ""} \
      ~{if defined(minMinCoverageForVariability) then ("--min-coverage-for-variability " +  '"' + minMinCoverageForVariability + '"') else ""} \
      ~{true="--list-contigs" false="" listListContigs} \
      ~{if defined(contigsContigsOfInterest) then ("--contigs-of-interest " +  '"' + contigsContigsOfInterest + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(queueQueueSize) then ("--queue-size " +  '"' + queueQueueSize + '"') else ""} \
      ~{if defined(writeWriteBufferSizePerThread) then ("--write-buffer-size-per-thread " +  '"' + writeWriteBufferSizePerThread + '"') else ""} \
      ~{true="--force-multi" false="" forceForceMulti}
  >>>
}