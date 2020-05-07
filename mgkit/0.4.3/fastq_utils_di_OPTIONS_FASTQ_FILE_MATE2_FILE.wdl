version 1.0

task FastqUtilsDiOPTIONSFASTQFILEMATE2FILE {
  input {
    String? mate1Mate1File
    String? mate2Mate2File
  }
  command <<<
    fastq-utils di OPTIONS FASTQ_FILE MATE2_FILE \
      ~{mate1Mate1File} \
      ~{mate2Mate2File}
  >>>
}