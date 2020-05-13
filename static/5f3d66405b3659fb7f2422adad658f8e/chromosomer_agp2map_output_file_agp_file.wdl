version 1.0

task ChromosomerAgp2mapOutputFileAgpFile {
  input {
    String? agpAgpFile
    String? outputOutputFile
  }
  command <<<
    chromosomer agp2map output_file agp_file \
      ~{agpAgpFile} \
      ~{outputOutputFile}
  >>>
}