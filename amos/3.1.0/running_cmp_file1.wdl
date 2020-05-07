version 1.0

task RunningCmpFile1 {
  input {
    File? fileFile2
  }
  command <<<
    running-cmp file1 \
      ~{fileFile2}
  >>>
}