version 1.0

task DimspyHdf5PmToTxt {
  input {
    String inputInput
    String outputOutput
    String attributeAttributeName
    String classClassLabelRsd
    String delimiterDelimiter
    String representationRepresentationSamples
    Boolean comprehensiveComprehensive
  }
  command <<<
    dimspy hdf5-pm-to-txt \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(attributeAttributeName) then ("--attribute_name " +  '"' + attributeAttributeName + '"') else ""} \
      ~{if defined(classClassLabelRsd) then ("--class-label-rsd " +  '"' + classClassLabelRsd + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(representationRepresentationSamples) then ("--representation-samples " +  '"' + representationRepresentationSamples + '"') else ""} \
      ~{true="--comprehensive" false="" comprehensiveComprehensive}
  >>>
}