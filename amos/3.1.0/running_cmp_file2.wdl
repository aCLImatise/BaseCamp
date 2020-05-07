version 1.0

task RunningCmpFile2 {
  input {
    File? fileFile1
    File? fileFile2
  }
  command <<<
    running-cmp file2 \
      ~{fileFile1} \
      ~{fileFile2}
  >>>
}