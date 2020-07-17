version 1.0

task Removesmartbell.sh {
  input {
    String in
  }
  command <<<
    removesmartbell.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}