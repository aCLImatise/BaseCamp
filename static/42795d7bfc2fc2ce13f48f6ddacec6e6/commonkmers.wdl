version 1.0

task Commonkmers.sh {
  input {
    String in
  }
  command <<<
    commonkmers.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}