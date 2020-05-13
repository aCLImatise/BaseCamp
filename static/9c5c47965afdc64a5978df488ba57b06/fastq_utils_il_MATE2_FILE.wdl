version 1.0

task FastqUtilsIlMATE2FILE {
  input {
    String? optionsOptions
    String? mate1Mate1File
    String? mate2Mate2File
    String? fastFastQFile
  }
  command <<<
    fastq-utils il MATE2_FILE \
      ~{optionsOptions} \
      ~{mate1Mate1File} \
      ~{mate2Mate2File} \
      ~{fastFastQFile}
  >>>
}