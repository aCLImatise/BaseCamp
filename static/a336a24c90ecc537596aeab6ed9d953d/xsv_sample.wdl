version 1.0

task XsvSample {
  input {
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? sampleSampleSize
    String? inputInput
  }
  command <<<
    xsv sample \
      ~{sampleSampleSize} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{inputInput}
  >>>
}