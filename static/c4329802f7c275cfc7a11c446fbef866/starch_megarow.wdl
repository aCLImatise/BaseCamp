version 1.0

task StarchMegarow {
  input {
    String starch
  }
  command <<<
    starch-megarow \
      ~{starch}
  >>>
  parameter_meta {
    starch: ""
  }
}