version 1.0

task Svmeasypy {
  command <<<
    svm_easy_py
  >>>
  output {
    File out_stdout = stdout()
  }
}