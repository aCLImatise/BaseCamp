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
    fseqbootall \
      ~{true="-categories" false="" categories} \
      ~{true="-mixfile" false="" mix_file} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-weights" false="" weights} \
      ~{true="-factorfile" false="" factor_file} \
      ~{true="-datatype" false="" datatype} \
      ~{true="-test" false="" test} \
      ~{true="-printdata" false="" print_data}
  >>>
  parameter_meta {
    categories: "properties File of input categories"
    mix_file: "properties File of mixtures"
    anc_file: "properties File of ancestors"
    weights: "properties Weights file"
    factor_file: "properties Factors file"
    datatype: "menu       [s] Choose the datatype (Values: s (Molecular sequences); m (Discrete Morphology); r (Restriction Sites); g (Gene Frequencies))"
    test: "menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute species for each character); o (Permute character order); s (Permute within species); r (Rewrite data))"
    print_data: "boolean    [N] Print out the data at start of run"
  }
}