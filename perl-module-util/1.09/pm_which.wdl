version 1.0

task PmWhich {
  input {
    String module
  }
  command <<<
    pm_which \
      ~{module}
  >>>
  parameter_meta {
    module: ""
  }
}