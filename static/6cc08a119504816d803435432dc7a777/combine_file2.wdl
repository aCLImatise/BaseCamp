version 1.0

task CombineFile2 {
  input {
    File? fileFile1
    String? opOp
    File? fileFile2
  }
  command <<<
    combine file2 \
      ~{fileFile1} \
      ~{opOp} \
      ~{fileFile2}
  >>>
}