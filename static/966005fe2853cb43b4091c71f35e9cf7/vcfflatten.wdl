version 1.0

task Vcfflatten {
  input {
    File? fileFile
  }
  command <<<
    vcfflatten \
      ~{fileFile}
  >>>
}