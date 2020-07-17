version 1.0

task CountConstantSites {
  input {
    String fast_a_file
  }
  command <<<
    count_constant_sites \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_a_file: ""
  }
}