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
    _fdiscboot \
      ~{if (mix_file) then "-mixfile" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (factor_file) then "-factorfile" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    mix_file: "properties File of mixtures"
    anc_file: "properties File of ancestors"
    weights: "properties Weights file"
    factor_file: "properties Factors file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j\\n(Jackknife); c (Permute species for each\\ncharacter); o (Permute character order); s\\n(Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}