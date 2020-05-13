version 1.0

task Processspeed.sh {
  input {
    File? fileFile
  }
  command <<<
    processspeed.sh \
      ~{fileFile}
  >>>
}