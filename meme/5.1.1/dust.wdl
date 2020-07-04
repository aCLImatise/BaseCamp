version 1.0

task Dust {
  input {
    String fast_a_file
    String? cut_off
  }
  command <<<
    dust \
      ~{fast_a_file} \
      ~{cut_off}
  >>>
  parameter_meta {
    fast_a_file: ""
    cut_off: ""
  }
}