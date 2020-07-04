version 1.0

task Samtoroc.sh {
  input {
    String in
  }
  command <<<
    samtoroc.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}