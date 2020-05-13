version 1.0

task Jaspscan {
  input {
    Boolean menuMenu
    Boolean matricesMatrices
    Boolean thresholdThreshold
  }
  command <<<
    jaspscan \
      ~{true="-menu" false="" menuMenu} \
      ~{true="-matrices" false="" matricesMatrices} \
      ~{true="-threshold" false="" thresholdThreshold}
  >>>
}