version 1.0

task BasenjiTrainRepspy {
  command <<<
    basenji_train_reps_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}