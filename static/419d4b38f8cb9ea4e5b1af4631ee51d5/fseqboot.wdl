version 1.0

task Fseqboot {
  input {
    Boolean? categories
    Boolean? weights
    Boolean? test
    Boolean? print_data
  }
  command <<<
    fseqboot \
      ~{if (categories) then "-categories" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    categories: "properties File of input categories"
    weights: "properties Weights file"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j\\n(Jackknife); c (Permute species for each\\ncharacter); o (Permute character order); s\\n(Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}