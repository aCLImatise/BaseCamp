version 1.0

task Fconsense {
  input {
    Boolean methodMethod
  }
  command <<<
    fconsense \
      ~{true="-method" false="" methodMethod}
  >>>
}