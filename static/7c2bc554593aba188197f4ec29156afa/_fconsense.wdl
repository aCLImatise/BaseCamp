version 1.0

task _fconsense {
  input {
    Boolean methodMethod
  }
  command <<<
    _fconsense \
      ~{true="-method" false="" methodMethod}
  >>>
}