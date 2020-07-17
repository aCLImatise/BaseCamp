version 1.0

task _fcontrast {
  input {
    Boolean? vary_within
  }
  command <<<
    _fcontrast \
      ~{true="-varywithin" false="" vary_within}
  >>>
  parameter_meta {
    vary_within: "boolean    [N] Within-population variation in data"
  }
}