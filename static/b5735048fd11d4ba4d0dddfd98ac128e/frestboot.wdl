version 1.0

task Frestboot {
  input {
    Boolean? weights
    Boolean? test
    Boolean? enzymes
    Boolean? print_data
  }
  command <<<
    frestboot \
      ~{true="-weights" false="" weights} \
      ~{true="-test" false="" test} \
      ~{true="-enzymes" false="" enzymes} \
      ~{true="-printdata" false="" print_data}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute species for each character); o (Permute character order); s (Permute within species); r (Rewrite data))"
    enzymes: "boolean    [N] Is the number of enzymes present in input file"
    print_data: "boolean    [N] Print out the data at start of run"
  }
}