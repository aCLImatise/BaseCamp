version 1.0

task FastqUtilsIlOPTIONSMATE1FILEMATE2FILE {
  input {
    String? fastFastQFile
  }
  command <<<
    fastq-utils il OPTIONS MATE1_FILE MATE2_FILE \
      ~{fastFastQFile}
  >>>
}