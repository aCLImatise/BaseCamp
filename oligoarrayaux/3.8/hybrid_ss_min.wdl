version 1.0

task HybridSsMin {
  input {
    File file
  }
  command <<<
    hybrid-ss-min \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}