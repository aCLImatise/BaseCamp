version 1.0

task Fqc {
  input {
    File? fileFile1
    File? fileFileN
  }
  command <<<
    fqc \
      ~{fileFile1} \
      ~{fileFileN}
  >>>
}