version 1.0

task Reformat.sh {
  input {
    String in
  }
  command <<<
    reformat.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}