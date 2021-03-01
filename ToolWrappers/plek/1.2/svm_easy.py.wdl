version 1.0

task Svmeasypy {
  command <<<
    svm_easy_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}