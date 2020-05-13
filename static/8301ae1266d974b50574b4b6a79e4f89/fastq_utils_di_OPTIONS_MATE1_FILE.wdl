version 1.0

task FastqUtilsDiOPTIONSMATE1FILE {
  input {
    String? fastFastQFile
    String? mate1Mate1File
    String? mate2Mate2File
  }
  command <<<
    fastq-utils di OPTIONS MATE1_FILE \
      ~{fastFastQFile} \
      ~{mate1Mate1File} \
      ~{mate2Mate2File}
  >>>
}