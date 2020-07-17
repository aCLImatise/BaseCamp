version 1.0

task Dedupebymapping.sh {
  input {
    String in
  }
  command <<<
    dedupebymapping.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}