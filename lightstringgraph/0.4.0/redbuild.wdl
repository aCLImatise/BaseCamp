version 1.0

task Redbuild {
  input {
    String? b
    Int? m
    Boolean? r
    Int? g
  }
  command <<<
    redbuild \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    b: "# (required)"
    m: "# (required)"
    r: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}