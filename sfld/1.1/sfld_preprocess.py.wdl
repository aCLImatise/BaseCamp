version 1.0

task SfldPreprocesspy {
  command <<<
    sfld_preprocess_py
  >>>
  output {
    File out_stdout = stdout()
  }
}