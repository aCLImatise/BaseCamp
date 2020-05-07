version 1.0

task Equicktandem {
  input {
    Boolean maxMaxRepeat
    Boolean thresholdThreshold
  }
  command <<<
    equicktandem \
      ~{true="-maxrepeat" false="" maxMaxRepeat} \
      ~{true="-threshold" false="" thresholdThreshold}
  >>>
}