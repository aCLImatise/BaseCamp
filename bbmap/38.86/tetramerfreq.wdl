version 1.0

task Tetramerfreq.sh {
  input {
    String in
  }
  command <<<
    tetramerfreq.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}