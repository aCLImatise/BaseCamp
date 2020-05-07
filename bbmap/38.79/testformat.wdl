version 1.0

task Testformat.sh {
  input {
    File? fileFile
  }
  command <<<
    testformat.sh \
      ~{fileFile}
  >>>
}