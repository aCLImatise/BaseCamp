version 1.0

task AddFeatureToMatrix {
  input {
    String matrixMatrix
    String outputOutput
    Boolean featureFeature
    String annotationAnnotationFeature
    String filteredFilteredGenomeGtfOutputFile
    String genomeGenomeGtf
    Array[String]+ featureFeatureNames
    String featureFeatureIdColumn
    String referenceReferencePoint
    String closestClosestGenesOutput
  }
  command <<<
    addFeatureToMatrix \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--feature" false="" featureFeature} \
      ~{if defined(annotationAnnotationFeature) then ("--annotationFeature " +  '"' + annotationAnnotationFeature + '"') else ""} \
      ~{if defined(filteredFilteredGenomeGtfOutputFile) then ("--filteredGenomeGtfOutputFile " +  '"' + filteredFilteredGenomeGtfOutputFile + '"') else ""} \
      ~{if defined(genomeGenomeGtf) then ("--genomeGtf " +  '"' + genomeGenomeGtf + '"') else ""} \
      ~{if defined(featureFeatureNames) then ("--featureNames " +  '"' + featureFeatureNames + '"') else ""} \
      ~{if defined(featureFeatureIdColumn) then ("--featureIdColumn " +  '"' + featureFeatureIdColumn + '"') else ""} \
      ~{if defined(referenceReferencePoint) then ("--referencePoint " +  '"' + referenceReferencePoint + '"') else ""} \
      ~{if defined(closestClosestGenesOutput) then ("--closestGenesOutput " +  '"' + closestClosestGenesOutput + '"') else ""}
  >>>
}