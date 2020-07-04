version 1.0

task RgtTDFIntegrate {
  input {
    Boolean? path
    Boolean? exp
  }
  command <<<
    rgt-TDF integrate \
      ~{true="-path" false="" path} \
      ~{true="-exp" false="" exp}
  >>>
  parameter_meta {
    path: "Define the path of the project."
    exp: "Include expression score for ranking."
  }
}