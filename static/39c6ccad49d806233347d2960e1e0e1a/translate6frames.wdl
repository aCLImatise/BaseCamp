version 1.0

task Translate6frames.sh {
  input {
    String in
  }
  command <<<
    translate6frames.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}