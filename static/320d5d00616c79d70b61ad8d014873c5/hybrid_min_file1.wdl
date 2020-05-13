version 1.0

task HybridMinFile1 {
  input {
    File? fileFile2
  }
  command <<<
    hybrid-min file1 \
      ~{fileFile2}
  >>>
}