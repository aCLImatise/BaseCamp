version 1.0

task QmerFilterIn  {
  input {
    String? thresholdThreshold
    String? inIn
    String? outOut
  }
  command <<<
    qmer-filter in  \
      ~{thresholdThreshold} \
      ~{inIn} \
      ~{outOut}
  >>>
}