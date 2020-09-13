version 1.0

task Fgendist {
  input {
    Boolean? method
    Boolean? lower
    File file
  }
  command <<<
    fgendist \
      ~{file} \
      ~{if (method) then "-method" else ""} \
      ~{if (lower) then "-lower" else ""}
  >>>
  parameter_meta {
    method: "menu       [n] Which method to use (Values: n (Nei\\ngenetic distance); c (Cavalli-Sforza chord\\nmeasure); r (Reynolds genetic distance))"
    lower: "boolean    [N] Lower triangular distance matrix"
    file: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}