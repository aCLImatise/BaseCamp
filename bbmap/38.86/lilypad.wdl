version 1.0

task Lilypad.sh {
  input {
    String in
  }
  command <<<
    lilypad.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}