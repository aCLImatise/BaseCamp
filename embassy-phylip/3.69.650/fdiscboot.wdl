version 1.0

task Fdiscboot {
  input {
    Boolean? mix_file
    Boolean? anc_file
    Boolean? weights
    Boolean? factor_file
    Boolean? test
    Boolean? print_data
  }
  command <<<
    fdiscboot \
      ~{true="-mixfile" false="" mix_file} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-weights" false="" weights} \
      ~{true="-factorfile" false="" factor_file} \
      ~{true="-test" false="" test} \
      ~{true="-printdata" false="" print_data}
  >>>
  parameter_meta {
    mix_file: "properties File of mixtures"
    anc_file: "properties File of ancestors"
    weights: "properties Weights file"
    factor_file: "properties Factors file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute species for each character); o (Permute character order); s (Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
}