version 1.0

task AnviPanGenome {
  input {
    String genomesGenomesStorage
    String genomeGenomeNames
    Boolean skipSkipAlignments
    Boolean skipSkipHomogeneity
    Boolean quickQuickHomogeneity
    String alignAlignWith
    Boolean excludeExcludePartialGeneCalls
    Boolean useUseNcbiBlast
    Int minMinBit
    String mclMclInflation
    String minMinOccurrence
    String minMinPercentIdentity
    Boolean sensitiveSensitive
    String projectProjectName
    String descriptionDescription
    String outputOutputDir
    Boolean overwriteOverwriteOutputDestinations
    String numNumThreads
    Boolean skipSkipHierarchicalClustering
    Boolean enforceEnforceHierarchicalClustering
    String distanceDistance
    String linkageLinkage
  }
  command <<<
    anvi-pan-genome \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(genomeGenomeNames) then ("--genome-names " +  '"' + genomeGenomeNames + '"') else ""} \
      ~{true="--skip-alignments" false="" skipSkipAlignments} \
      ~{true="--skip-homogeneity" false="" skipSkipHomogeneity} \
      ~{true="--quick-homogeneity" false="" quickQuickHomogeneity} \
      ~{if defined(alignAlignWith) then ("--align-with " +  '"' + alignAlignWith + '"') else ""} \
      ~{true="--exclude-partial-gene-calls" false="" excludeExcludePartialGeneCalls} \
      ~{true="--use-ncbi-blast" false="" useUseNcbiBlast} \
      ~{if defined(minMinBit) then ("--minbit " +  '"' + minMinBit + '"') else ""} \
      ~{if defined(mclMclInflation) then ("--mcl-inflation " +  '"' + mclMclInflation + '"') else ""} \
      ~{if defined(minMinOccurrence) then ("--min-occurrence " +  '"' + minMinOccurrence + '"') else ""} \
      ~{if defined(minMinPercentIdentity) then ("--min-percent-identity " +  '"' + minMinPercentIdentity + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{if defined(projectProjectName) then ("--project-name " +  '"' + projectProjectName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--overwrite-output-destinations" false="" overwriteOverwriteOutputDestinations} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--skip-hierarchical-clustering" false="" skipSkipHierarchicalClustering} \
      ~{true="--enforce-hierarchical-clustering" false="" enforceEnforceHierarchicalClustering} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""}
  >>>
}