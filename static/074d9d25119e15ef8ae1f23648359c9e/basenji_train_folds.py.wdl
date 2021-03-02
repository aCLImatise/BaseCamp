version 1.0

task BasenjiTrainFoldspy {
  command <<<
    basenji_train_folds_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}