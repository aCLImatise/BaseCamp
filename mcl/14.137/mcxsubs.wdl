version 1.0

task Mcxsubs {
  input {
    String sub_spec
  }
  command <<<
    mcxsubs \
      ~{sub_spec}
  >>>
  parameter_meta {
    sub_spec: ""
  }
}