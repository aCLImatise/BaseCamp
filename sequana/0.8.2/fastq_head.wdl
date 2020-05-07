version 1.0

task FastqHead {
  input {
    String nlinesNlines
    String inputInput
    String outputOutput
    String? inputInput
    String? 1000010000
    String? outputOutput
  }
  command <<<
    fastq_head \
      ~{inputInput} \
      ~{if defined(nlinesNlines) then ("--nlines " +  '"' + nlinesNlines + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{1000010000} \
      ~{outputOutput}
  >>>
}