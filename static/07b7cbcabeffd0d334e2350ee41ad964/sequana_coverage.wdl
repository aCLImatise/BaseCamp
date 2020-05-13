version 1.0

task SequanaCoverage {
  input {
    String inputInput
    String chromosomeChromosome
    Boolean circularCircular
    Boolean noNoHtml
    Boolean noNoMultiQc
    String debugDebugLevel
    String levelLevel
    String genbankGenbank
    String referenceReference
    String windowWindowGc
    String nNLevels
    String windowWindowMedian
    String mixtureMixtureModels
    String lowLowThreshold
    String highHighThreshold
    String thresholdThreshold
    String clusteringClusteringParameter
    Boolean sS
    Boolean bB
    String cnvCnvClustering
    String databaseDatabase
  }
  command <<<
    sequana_coverage \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{true="--circular" false="" circularCircular} \
      ~{true="--no-html" false="" noNoHtml} \
      ~{true="--no-multiqc" false="" noNoMultiQc} \
      ~{if defined(debugDebugLevel) then ("--debug-level " +  '"' + debugDebugLevel + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(genbankGenbank) then ("--genbank " +  '"' + genbankGenbank + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(windowWindowGc) then ("--window-gc " +  '"' + windowWindowGc + '"') else ""} \
      ~{if defined(nNLevels) then ("--nlevels " +  '"' + nNLevels + '"') else ""} \
      ~{if defined(windowWindowMedian) then ("--window-median " +  '"' + windowWindowMedian + '"') else ""} \
      ~{if defined(mixtureMixtureModels) then ("--mixture-models " +  '"' + mixtureMixtureModels + '"') else ""} \
      ~{if defined(lowLowThreshold) then ("--low-threshold " +  '"' + lowLowThreshold + '"') else ""} \
      ~{if defined(highHighThreshold) then ("--high-threshold " +  '"' + highHighThreshold + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(clusteringClusteringParameter) then ("--clustering-parameter " +  '"' + clusteringClusteringParameter + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{if defined(cnvCnvClustering) then ("--cnv-clustering " +  '"' + cnvCnvClustering + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""}
  >>>
}