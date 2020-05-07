version 1.0

task BcftoolsGtcheck {
  input {
    Boolean allAllSites
    Boolean clusterCluster
    File genotypesGenotypes
    Int gtsGtsOnly
    Boolean homsHomsOnly
    String plotPlot
    String regionsRegions
    File regionsRegionsFile
    String queryQuerySample
    String targetTargetSample
    String targetsTargets
    File targetsTargetsFile
    String? queryQueryVcfGz
  }
  command <<<
    bcftools gtcheck \
      ~{queryQueryVcfGz} \
      ~{true="--all-sites" false="" allAllSites} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{if defined(genotypesGenotypes) then ("--genotypes " +  '"' + genotypesGenotypes + '"') else ""} \
      ~{if defined(gtsGtsOnly) then ("--GTs-only " +  '"' + gtsGtsOnly + '"') else ""} \
      ~{true="--homs-only" false="" homsHomsOnly} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(queryQuerySample) then ("--query-sample " +  '"' + queryQuerySample + '"') else ""} \
      ~{if defined(targetTargetSample) then ("--target-sample " +  '"' + targetTargetSample + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""}
  >>>
}