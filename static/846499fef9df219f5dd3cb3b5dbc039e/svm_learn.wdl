version 1.0

task SvmLearn {
  command <<<
    svm_learn
  >>>
  output {
    File out_stdout = stdout()
  }
}