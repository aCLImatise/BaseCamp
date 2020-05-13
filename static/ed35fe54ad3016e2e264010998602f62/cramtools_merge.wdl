version 1.0

task CramtoolsMerge {
  input {
    Boolean outputOutputFile
    Boolean referenceReferenceFastAFile
    Boolean regionRegion
    Boolean samSamFormat
    Boolean samSamHeader
    Boolean logLogLevel
    Boolean validationValidationLevel
  }
  command <<<
    cramtools merge \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--reference-fasta-file" false="" referenceReferenceFastAFile} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--sam-format" false="" samSamFormat} \
      ~{true="--sam-header" false="" samSamHeader} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--validation-level" false="" validationValidationLevel}
  >>>
}