version 1.0

task Fa2htgs {
  input {
    Boolean? arbitrary_keyword_optional
  }
  command <<<
    fa2htgs \
      ~{true="-k" false="" arbitrary_keyword_optional}
  >>>
  parameter_meta {
    arbitrary_keyword_optional: "Arbitrary Keyword [String]  Optional"
  }
}