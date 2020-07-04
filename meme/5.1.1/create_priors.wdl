version 1.0

task CreatePriors {
  input {
    String fast_a_file
    String wiggle_file
  }
  command <<<
    create-priors \
      ~{fast_a_file} \
      ~{wiggle_file}
  >>>
  parameter_meta {
    fast_a_file: ""
    wiggle_file: ""
  }
}