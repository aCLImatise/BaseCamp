version 1.0

task FastqUtilsConvertOPTIONSFASTQFILE {
  input {
    String? fastFastAFile
  }
  command <<<
    fastq-utils convert OPTIONS FASTQ_FILE \
      ~{fastFastAFile}
  >>>
}