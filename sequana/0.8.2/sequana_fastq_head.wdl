version 1.0

task SequanaFastqHead {
  input {
    String nlinesNlines
    String inputInput
    String outputOutput
    String? fastFastQHead
    String? inputInput
    String? 1000010000
    String? outputOutput
  }
  command <<<
    sequana_fastq_head \
      ~{fastFastQHead} \
      ~{if defined(nlinesNlines) then ("--nlines " +  '"' + nlinesNlines + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{inputInput} \
      ~{1000010000} \
      ~{outputOutput}
  >>>
}