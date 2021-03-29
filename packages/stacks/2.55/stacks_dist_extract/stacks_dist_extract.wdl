version 1.0

task Stacksdistextract {
  input {
    String dist_file
  }
  command <<<
    stacks_dist_extract \
      ~{dist_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  parameter_meta {
    dist_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}