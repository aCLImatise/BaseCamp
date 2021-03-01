version 1.0

task SfldPreprocesspy {
  command <<<
    sfld_preprocess_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}