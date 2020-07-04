version 1.0

task Rename.sh {
  input {
    String in
  }
  command <<<
    rename.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}