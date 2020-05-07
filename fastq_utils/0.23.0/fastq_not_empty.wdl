version 1.0

task FastqNotEmpty {
  input {
    String? fastFastQFile
  }
  command <<<
    fastq_not_empty \
      ~{fastFastQFile}
  >>>
}