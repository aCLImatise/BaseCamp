version 1.0

task Mutate.sh {
  input {
    String in
  }
  command <<<
    mutate.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}