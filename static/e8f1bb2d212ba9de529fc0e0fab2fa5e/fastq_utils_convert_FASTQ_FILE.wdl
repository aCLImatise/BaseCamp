version 1.0

task FastqUtilsConvertFASTQFILE {
  input {
    String? optionsOptions
    String? fastFastQFile
    String? fastFastAFile
  }
  command <<<
    fastq-utils convert FASTQ_FILE \
      ~{optionsOptions} \
      ~{fastFastQFile} \
      ~{fastFastAFile}
  >>>
}