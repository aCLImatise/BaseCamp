version 1.0

task FastqUtilsIlOPTIONSMATE1FILEFASTQFILE {
  input {
    String? mate2Mate2File
    String? fastFastQFile
  }
  command <<<
    fastq-utils il OPTIONS MATE1_FILE FASTQ_FILE \
      ~{mate2Mate2File} \
      ~{fastFastQFile}
  >>>
}