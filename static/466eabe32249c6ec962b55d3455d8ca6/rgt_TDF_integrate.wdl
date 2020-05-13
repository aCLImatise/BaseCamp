version 1.0

task RgtTDFIntegrate {
  input {
    Boolean pathPath
    Boolean expExp
  }
  command <<<
    rgt-TDF integrate \
      ~{true="-path" false="" pathPath} \
      ~{true="-exp" false="" expExp}
  >>>
}