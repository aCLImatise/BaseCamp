version 1.0

task Translate {
  input {
    String fast_a_file
  }
  command <<<
    translate \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_a_file: ""
  }
}