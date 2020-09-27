version 1.0

task Compare {
  input {
    File? an_not
    Boolean? caps
    Boolean? core
    Boolean? col
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
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if (caps) then "-caps" else ""} \
      ~{if (core) then "-core" else ""} \
      ~{if (col) then "-col" else ""}
  >>>
  parameter_meta {
    an_not: ""
    caps: ""
    core: ""
    col: ""
    score: ""
    test_alignment: ""
    reference_alignment: ""
    bali_base_an_not_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}