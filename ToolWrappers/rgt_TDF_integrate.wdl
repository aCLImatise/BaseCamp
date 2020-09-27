version 1.0

task RgtTDFIntegrate {
  input {
    Boolean? path
    Boolean? exp
  }
  command <<<
    rgt_TDF integrate \
      ~{if (path) then "-path" else ""} \
      ~{if (exp) then "-exp" else ""}
  >>>
  parameter_meta {
    path: "Define the path of the project."
    exp: "Include expression score for ranking."
  }
  output {
    File out_stdout = stdout()
  }
}