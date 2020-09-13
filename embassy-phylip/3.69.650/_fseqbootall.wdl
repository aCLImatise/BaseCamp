version 1.0

task Fseqbootall {
  input {
    Boolean? categories
    Boolean? mix_file
    Boolean? anc_file
    Boolean? weights
    Boolean? factor_file
    Boolean? datatype
    Boolean? test
    Boolean? print_data
  }
  command <<<
    _fseqbootall \
      ~{if (categories) then "-categories" else ""} \
      ~{if (mix_file) then "-mixfile" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (factor_file) then "-factorfile" else ""} \
      ~{if (datatype) then "-datatype" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    categories: "properties File of input categories"
    mix_file: "properties File of mixtures"
    anc_file: "properties File of ancestors"
    weights: "properties Weights file"
    factor_file: "properties Factors file"
    datatype: "menu       [s] Choose the datatype (Values: s\\n(Molecular sequences); m (Discrete\\nMorphology); r (Restriction Sites); g (Gene\\nFrequencies))"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j\\n(Jackknife); c (Permute species for each\\ncharacter); o (Permute character order); s\\n(Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}