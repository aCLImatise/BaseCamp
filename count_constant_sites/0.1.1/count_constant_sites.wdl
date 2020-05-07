version 1.0

task CountConstantSites {
  input {
    String? fastFastAFile
  }
  command <<<
    count_constant_sites \
      ~{fastFastAFile}
  >>>
}