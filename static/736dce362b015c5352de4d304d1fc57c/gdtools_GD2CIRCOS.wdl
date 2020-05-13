version 1.0

task GdtoolsGD2CIRCOS {
  input {
    String referenceReference
    String outputOutput
    String distanceDistance
    String featureFeature
  }
  command <<<
    gdtools GD2CIRCOS \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""}
  >>>
}