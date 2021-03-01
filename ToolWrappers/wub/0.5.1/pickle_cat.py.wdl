version 1.0

task PickleCatpy {
  input {
    String pickle_file
  }
  command <<<
    pickle_cat_py \
      ~{pickle_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    pickle_file: "Input pickle file."
  }
  output {
    File out_stdout = stdout()
  }
}