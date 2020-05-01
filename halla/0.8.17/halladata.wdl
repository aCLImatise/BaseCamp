version 1.0

task Halladata {
  input {
    Boolean verboseVerbose
    String featuresFeatures
    String samplesSamples
    String clustersClusters
    String associationAssociation
    String distributionDistribution
    String noiseNoiseBetween
    String noiseNoiseWithin
    String outputOutput
    String structureStructure
    String clusterClusterPercentage
  }
  command <<<
    halladata \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(associationAssociation) then ("--association " +  '"' + associationAssociation + '"') else ""} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{if defined(noiseNoiseBetween) then ("--noise-between " +  '"' + noiseNoiseBetween + '"') else ""} \
      ~{if defined(noiseNoiseWithin) then ("--noise-within " +  '"' + noiseNoiseWithin + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(structureStructure) then ("--structure " +  '"' + structureStructure + '"') else ""} \
      ~{if defined(clusterClusterPercentage) then ("--cluster-percentage " +  '"' + clusterClusterPercentage + '"') else ""}
  >>>
}