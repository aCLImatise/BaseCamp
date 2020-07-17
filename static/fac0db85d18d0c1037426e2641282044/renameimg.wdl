version 1.0

task Renameimg.sh {
  input {
    String in
  }
  command <<<
    renameimg.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}