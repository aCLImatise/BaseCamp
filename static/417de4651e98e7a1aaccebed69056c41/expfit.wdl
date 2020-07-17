version 1.0

task Expfit.sh {
  input {
    String par_file
  }
  command <<<
    expfit.sh \
      ~{par_file}
  >>>
  parameter_meta {
    par_file: ""
  }
}