version 1.0

task CombineOP {
  input {
    File? fileFile1
    String? opOp
    File? fileFile2
  }
  command <<<
    combine OP \
      ~{fileFile1} \
      ~{opOp} \
      ~{fileFile2}
  >>>
}