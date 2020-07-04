version 1.0

task Kmerfilterset.sh {
  input {
    String in
  }
  command <<<
    kmerfilterset.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}