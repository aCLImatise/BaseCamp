version 1.0

task FastqUtilsIlOPTIONSMATE2FILE {
  input {
    String? mate1Mate1File
    String? mate2Mate2File
    String? fastFastQFile
  }
  command <<<
    fastq-utils il OPTIONS MATE2_FILE \
      ~{mate1Mate1File} \
      ~{mate2Mate2File} \
      ~{fastFastQFile}
  >>>
}