version 1.0

task Bbest.sh {
  input {
    String in
  }
  command <<<
    bbest.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}