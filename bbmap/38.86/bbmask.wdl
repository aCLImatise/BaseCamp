version 1.0

task Bbmask.sh {
  input {
    String in
  }
  command <<<
    bbmask.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}