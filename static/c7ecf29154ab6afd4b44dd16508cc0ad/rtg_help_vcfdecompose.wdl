version 1.0

task RtgHelpVcfdecompose {
  input {
    File inputInput
    File outputOutput
    String templateTemplate
    String breakBreakIndels
    Boolean breakBreakMnps
    Boolean noNoGzip
    Boolean noNoHeader
  }
  command <<<
    rtg help vcfdecompose \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(breakBreakIndels) then ("--break-indels " +  '"' + breakBreakIndels + '"') else ""} \
      ~{true="--break-mnps" false="" breakBreakMnps} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}