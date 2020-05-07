version 1.0

task SambambaSubsample {
  input {
    Boolean typeType
    Boolean maxMaxCov
    String outputOutput
    Boolean removeRemove
    String loggingLogging
  }
  command <<<
    sambamba subsample \
      ~{true="--type" false="" typeType} \
      ~{true="--max-cov" false="" maxMaxCov} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{if defined(loggingLogging) then ("--logging " +  '"' + loggingLogging + '"') else ""}
  >>>
}