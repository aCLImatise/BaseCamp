version 1.0

task SequanaFastqCount {
  input {
    String inputInput
    String? fastFastQCount
    String? inputInput
    String? nN
    String? outputOutput
  }
  command <<<
    sequana_fastq_count \
      ~{fastFastQCount} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{inputInput} \
      ~{nN} \
      ~{outputOutput}
  >>>
}