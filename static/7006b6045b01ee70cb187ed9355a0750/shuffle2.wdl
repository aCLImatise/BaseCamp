version 1.0

task Shuffle2.sh {
  input {
    String in
  }
  command <<<
    shuffle2.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}