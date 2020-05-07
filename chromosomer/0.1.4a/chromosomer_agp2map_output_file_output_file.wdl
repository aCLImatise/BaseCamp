version 1.0

task ChromosomerAgp2mapOutputFileOutputFile {
  input {
    String? agpAgpFile
    String? outputOutputFile
  }
  command <<<
    chromosomer agp2map output_file output_file \
      ~{agpAgpFile} \
      ~{outputOutputFile}
  >>>
}