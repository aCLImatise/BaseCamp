version 1.0

task HybridMinFile2 {
  input {
    File? fileFile1
    File? fileFile2
  }
  command <<<
    hybrid-min file2 \
      ~{fileFile1} \
      ~{fileFile2}
  >>>
}