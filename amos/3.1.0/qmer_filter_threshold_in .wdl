version 1.0

task QmerFilterThresholdIn  {
  input {
    String? outOut
  }
  command <<<
    qmer-filter threshold in  \
      ~{outOut}
  >>>
}