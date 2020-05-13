version 1.0

task FastqUtilsIlOPTIONSFASTQFILE {
  input {
    String? mate1Mate1File
    String? mate2Mate2File
    String? fastFastQFile
  }
  command <<<
    fastq-utils il OPTIONS FASTQ_FILE \
      ~{mate1Mate1File} \
      ~{mate2Mate2File} \
      ~{fastFastQFile}
  >>>
}