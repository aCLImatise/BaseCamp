version 1.0

task FastqStats {
  input {
    String? fastFastQFile
  }
  command <<<
    fastq-stats \
      ~{fastFastQFile}
  >>>
}