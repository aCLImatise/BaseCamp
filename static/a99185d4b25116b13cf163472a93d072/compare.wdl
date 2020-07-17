version 1.0

task Compare {
  input {
    Boolean? col
    Boolean? core
    Boolean? caps
    File? an_not
    String score
    String test_alignment
    String reference_alignment
    String? bali_base_an_not_file
  }
  command <<<
    compare \
      ~{score} \
      ~{test_alignment} \
      ~{reference_alignment} \
      ~{bali_base_an_not_file} \
      ~{true="-col" false="" col} \
      ~{true="-core" false="" core} \
      ~{true="-caps" false="" caps} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""}
  >>>
  parameter_meta {
    col: ""
    core: ""
    caps: ""
    an_not: ""
    score: ""
    test_alignment: ""
    reference_alignment: ""
    bali_base_an_not_file: ""
  }
}