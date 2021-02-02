version 1.0

task CheckAgpAndFa {
  input {
    String? exclude
  }
  command <<<
    checkAgpAndFa \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    exclude: "- Ignore seq (e.g. chrM for which we usually get\\nsequence from GenBank but don't have AGP)"
  }
  output {
    File out_stdout = stdout()
  }
}