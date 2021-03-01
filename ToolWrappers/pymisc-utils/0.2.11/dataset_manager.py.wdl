version 1.0

task DatasetManagerpy {
  command <<<
    dataset_manager_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}