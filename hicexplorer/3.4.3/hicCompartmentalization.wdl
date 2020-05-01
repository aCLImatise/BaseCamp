version 1.0

task HicCompartmentalization {
  input {
    Array[String]+ obsObsExpMatrices
    String pcPcA
    String outputOutputFileName
    String quantileQuantile
    String outliersOutliers
    String outputOutputMatrix
    Array[String]+ offsetOffset
  }
  command <<<
    hicCompartmentalization \
      ~{if defined(obsObsExpMatrices) then ("--obsexp_matrices " +  '"' + obsObsExpMatrices + '"') else ""} \
      ~{if defined(pcPcA) then ("--pca " +  '"' + pcPcA + '"') else ""} \
      ~{if defined(outputOutputFileName) then ("--outputFileName " +  '"' + outputOutputFileName + '"') else ""} \
      ~{if defined(quantileQuantile) then ("--quantile " +  '"' + quantileQuantile + '"') else ""} \
      ~{if defined(outliersOutliers) then ("--outliers " +  '"' + outliersOutliers + '"') else ""} \
      ~{if defined(outputOutputMatrix) then ("--outputMatrix " +  '"' + outputOutputMatrix + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""}
  >>>
}