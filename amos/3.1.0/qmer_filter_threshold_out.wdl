version 1.0

task QmerFilterThresholdOut {
  input {
    String? inIn
    String? outOut
  }
  command <<<
    qmer-filter threshold out \
      ~{inIn} \
      ~{outOut}
  >>>
}