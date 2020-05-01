version 1.0

task Bayescan2 {
  input {
    Boolean outOutPilot
    Boolean outOutFreq
  }
  command <<<
    bayescan2 \
      ~{true="-out_pilot" false="" outOutPilot} \
      ~{true="-out_freq" false="" outOutFreq}
  >>>
}