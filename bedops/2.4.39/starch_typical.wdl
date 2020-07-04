version 1.0

task StarchTypical {
  input {
    String starch
  }
  command <<<
    starch-typical \
      ~{starch}
  >>>
  parameter_meta {
    starch: ""
  }
}