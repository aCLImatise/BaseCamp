version 1.0

task CombineFile1File2 {
  input {
    String? opOp
    File? fileFile2
  }
  command <<<
    combine file1 file2 \
      ~{opOp} \
      ~{fileFile2}
  >>>
}