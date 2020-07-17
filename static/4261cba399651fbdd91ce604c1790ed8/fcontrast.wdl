version 1.0

task Fcontrast {
  input {
    Boolean? vary_within
  }
  command <<<
    fcontrast \
      ~{true="-varywithin" false="" vary_within}
  >>>
  parameter_meta {
    vary_within: "boolean    [N] Within-population variation in data"
  }
}