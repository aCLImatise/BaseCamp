version 1.0

task TailLinesTail {
  input {
    File? fileFile
    String? tailTail
  }
  command <<<
    tailLines tail \
      ~{fileFile} \
      ~{tailTail}
  >>>
}