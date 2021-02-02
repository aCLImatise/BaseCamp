version 1.0

task Stacksdistextract {
  input {
    String dist_file
  }
  command <<<
    stacks_dist_extract \
      ~{dist_file}
  >>>
  parameter_meta {
    dist_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}