version 1.0

task GetPackageData.R {
  input {
    String markerMarkerFile
    String exprExprMatrix
    String phenoPhenoData
    String featureFeatureData
    String outputOutputDir
  }
  command <<<
    get_package_data.R \
      ~{if defined(markerMarkerFile) then ("--marker-file " +  '"' + markerMarkerFile + '"') else ""} \
      ~{if defined(exprExprMatrix) then ("--expr-matrix " +  '"' + exprExprMatrix + '"') else ""} \
      ~{if defined(phenoPhenoData) then ("--pheno-data " +  '"' + phenoPhenoData + '"') else ""} \
      ~{if defined(featureFeatureData) then ("--feature-data " +  '"' + featureFeatureData + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}