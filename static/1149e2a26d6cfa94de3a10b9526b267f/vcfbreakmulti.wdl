version 1.0

task Vcfbreakmulti {
  input {
    File? fileFile
  }
  command <<<
    vcfbreakmulti \
      ~{fileFile}
  >>>
}