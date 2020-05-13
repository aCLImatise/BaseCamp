version 1.0

task _equicktandem {
  input {
    Boolean maxMaxRepeat
    Boolean thresholdThreshold
  }
  command <<<
    _equicktandem \
      ~{true="-maxrepeat" false="" maxMaxRepeat} \
      ~{true="-threshold" false="" thresholdThreshold}
  >>>
}