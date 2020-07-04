version 1.0

task Shuffle.sh {
  input {
    String in
  }
  command <<<
    shuffle.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}