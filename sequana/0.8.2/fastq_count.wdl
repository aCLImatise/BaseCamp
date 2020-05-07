version 1.0

task FastqCount {
  input {
    String inputInput
    String? inputInput
    String? nN
    String? outputOutput
  }
  command <<<
    fastq_count \
      ~{inputInput} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{nN} \
      ~{outputOutput}
  >>>
}