version 1.0

task Frestboot {
  input {
    Boolean? weights
    Boolean? test
    Boolean? enzymes
    Boolean? print_data
  }
  command <<<
    _frestboot \
      ~{if (weights) then "-weights" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (enzymes) then "-enzymes" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j\\n(Jackknife); c (Permute species for each\\ncharacter); o (Permute character order); s\\n(Permute within species); r (Rewrite data))"
    enzymes: "boolean    [N] Is the number of enzymes present in\\ninput file"
    print_data: "boolean    [N] Print out the data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}