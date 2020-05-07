version 1.0

task ScHicClusterCompartments {
  input {
    String matrixMatrix
    String numberNumberOfClusters
    String outOutFilename
    String clusterClusterMethod
    Array[String]+ chromosomesChromosomes
    Boolean normNorm
    Boolean binBinARization
    String extraExtraTrack
    String histHistOnMarkType
    String threadsThreads
  }
  command <<<
    scHicClusterCompartments \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(numberNumberOfClusters) then ("--numberOfClusters " +  '"' + numberNumberOfClusters + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(clusterClusterMethod) then ("--clusterMethod " +  '"' + clusterClusterMethod + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{true="--norm" false="" normNorm} \
      ~{true="--binarization" false="" binBinARization} \
      ~{if defined(extraExtraTrack) then ("--extraTrack " +  '"' + extraExtraTrack + '"') else ""} \
      ~{if defined(histHistOnMarkType) then ("--histonMarkType " +  '"' + histHistOnMarkType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}