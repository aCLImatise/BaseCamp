version 1.0

task QmerFilterOut {
  input {
    String? thresholdThreshold
    String? inIn
    String? outOut
  }
  command <<<
    qmer-filter out \
      ~{thresholdThreshold} \
      ~{inIn} \
      ~{outOut}
  >>>
}