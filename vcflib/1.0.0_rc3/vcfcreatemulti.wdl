version 1.0

task Vcfcreatemulti {
  input {
    File? fileFile
  }
  command <<<
    vcfcreatemulti \
      ~{fileFile}
  >>>
}