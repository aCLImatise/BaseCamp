version 1.0

task MeanOPTION... {
  input {
    String mean
  }
  command <<<
    mean OPTION... \
      ~{mean}
  >>>
  parameter_meta {
    mean: ""
  }
}