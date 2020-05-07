version 1.0

task ChromosomerAgp2mapAgpFile {
  input {
    String? agpAgpFile
    String? outputOutputFile
  }
  command <<<
    chromosomer agp2map agp_file \
      ~{agpAgpFile} \
      ~{outputOutputFile}
  >>>
}