version 1.0

task HicPlotViewpoint {
  input {
    Array[String]+ matrixMatrix
    String regionRegion
    String outOutFilename
    String referenceReferencePoint
    String chromosomeChromosome
    Int interactionInteractionOutFilename
    String dpiDpi
  }
  command <<<
    hicPlotViewpoint \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(referenceReferencePoint) then ("--referencePoint " +  '"' + referenceReferencePoint + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(interactionInteractionOutFilename) then ("--interactionOutFileName " +  '"' + interactionInteractionOutFilename + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}