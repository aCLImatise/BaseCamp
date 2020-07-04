version 1.0

task Shred.sh {
  input {
    String in
  }
  command <<<
    shred.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}