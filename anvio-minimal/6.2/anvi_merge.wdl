version 1.0

task AnviMerge {
  input {
    String contigsContigsDb
    String outputOutputDir
    String sampleSampleName
    String descriptionDescription
    Boolean skipSkipHierarchicalClustering
    Boolean enforceEnforceHierarchicalClustering
    String distanceDistance
    String linkageLinkage
    Boolean overwriteOverwriteOutputDestinations
  }
  command <<<
    anvi-merge \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{true="--skip-hierarchical-clustering" false="" skipSkipHierarchicalClustering} \
      ~{true="--enforce-hierarchical-clustering" false="" enforceEnforceHierarchicalClustering} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{true="--overwrite-output-destinations" false="" overwriteOverwriteOutputDestinations}
  >>>
}