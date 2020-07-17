version 1.0

task Loglog.sh {
  input {
    String in
  }
  command <<<
    loglog.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}