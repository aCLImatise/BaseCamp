version 1.0

task PickleCatpy {
  input {
    String pickle_file
  }
  command <<<
    pickle_cat_py \
      ~{pickle_file}
  >>>
  parameter_meta {
    pickle_file: "Input pickle file."
  }
  output {
    File out_stdout = stdout()
  }
}