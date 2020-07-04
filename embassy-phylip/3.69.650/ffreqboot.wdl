version 1.0

task Ffreqboot {
  input {
    Boolean? weights
    Boolean? test
    Boolean? print_data
  }
  command <<<
    ffreqboot \
      ~{true="-weights" false="" weights} \
      ~{true="-test" false="" test} \
      ~{true="-printdata" false="" print_data}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute species for each character); o (Permute character order); s (Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
}