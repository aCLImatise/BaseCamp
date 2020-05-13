version 1.0

task CombineFile1OP {
  input {
    File? fileFile2
  }
  command <<<
    combine file1 OP \
      ~{fileFile2}
  >>>
}