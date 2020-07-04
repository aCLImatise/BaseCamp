version 1.0

task ShowSnps {
  input {
    String delta_file
  }
  command <<<
    show-snps \
      ~{delta_file}
  >>>
  parameter_meta {
    delta_file: ""
  }
}