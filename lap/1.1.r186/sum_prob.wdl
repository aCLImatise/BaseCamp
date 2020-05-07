version 1.0

task SumProb.py {
  input {
    Boolean thresholdThreshold
    Boolean inputInput
    Boolean debugDebugLevel
  }
  command <<<
    sum_prob.py \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--input" false="" inputInput} \
      ~{true="--debug_level" false="" debugDebugLevel}
  >>>
}