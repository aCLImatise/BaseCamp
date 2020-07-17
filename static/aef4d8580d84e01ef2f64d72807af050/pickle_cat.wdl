version 1.0

task PickleCat.py {
  input {
    String pickle_file
  }
  command <<<
    pickle_cat.py \
      ~{pickle_file}
  >>>
  parameter_meta {
    pickle_file: "Input pickle file."
  }
}