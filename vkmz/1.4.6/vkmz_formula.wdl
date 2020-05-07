version 1.0

task VkmzFormula {
  input {
    String inputInput
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
    vkmz formula \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
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