version 1.0

task Fgendist {
  input {
    Boolean? method
    Boolean? lower
    File additional_optional_qualifiers
  }
  command <<<
    fgendist \
      ~{additional_optional_qualifiers} \
      ~{if (method) then "-method" else ""} \
      ~{if (lower) then "-lower" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    method: "menu       [n] Which method to use (Values: n (Nei\\ngenetic distance); c (Cavalli-Sforza chord\\nmeasure); r (Reynolds genetic distance))"
    lower: "boolean    [N] Lower triangular distance matrix"
    additional_optional_qualifiers: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}