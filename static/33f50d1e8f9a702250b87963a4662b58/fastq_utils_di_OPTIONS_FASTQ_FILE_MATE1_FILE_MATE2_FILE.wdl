version 1.0

task FastqUtilsDiOPTIONSFASTQFILEMATE1FILEMATE2FILE {
  input {
    Boolean stripStrip
  }
  command <<<
    fastq-utils di OPTIONS FASTQ_FILE MATE1_FILE MATE2_FILE \
      ~{true="--strip" false="" stripStrip}
  >>>
}