version 1.0

task VkmzW4mXcms {
  input {
    Boolean dataDataMatrix
    Boolean sampleSampleMetadata
    Boolean variableVariableMetadata
    Boolean errorError
    Boolean outputOutput
    Boolean jsonJson
    Boolean sqlSql
    Boolean metadataMetadata
    Boolean databaseDatabase
    Boolean prefixPrefix
    String polarityPolarity
    Boolean neutralNeutral
    Boolean alternateAlternate
    Boolean imputeImputeCharge
  }
  command <<<
    vkmz w4m-xcms \
      ~{true="--data-matrix" false="" dataDataMatrix} \
      ~{true="--sample-metadata" false="" sampleSampleMetadata} \
      ~{true="--variable-metadata" false="" variableVariableMetadata} \
      ~{true="--error" false="" errorError} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--sql" false="" sqlSql} \
      ~{true="--metadata" false="" metadataMetadata} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{if defined(polarityPolarity) then ("--polarity " +  '"' + polarityPolarity + '"') else ""} \
      ~{true="--neutral" false="" neutralNeutral} \
      ~{true="--alternate" false="" alternateAlternate} \
      ~{true="--impute-charge" false="" imputeImputeCharge}
  >>>
}