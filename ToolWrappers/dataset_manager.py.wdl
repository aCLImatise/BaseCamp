version 1.0

task DatasetManagerpy {
  command <<<
    dataset_manager_py
  >>>
  output {
    File out_stdout = stdout()
  }
}