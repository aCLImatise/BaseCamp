version 1.0

task Ct2rnaml {
  input {
    File? fileFileCt
  }
  command <<<
    ct2rnaml \
      ~{fileFileCt}
  >>>
}