version 1.0

task HybridSsMin {
  input {
    File? fileFile
  }
  command <<<
    hybrid-ss-min \
      ~{fileFile}
  >>>
}