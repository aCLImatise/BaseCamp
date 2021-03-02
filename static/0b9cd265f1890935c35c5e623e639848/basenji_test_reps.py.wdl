version 1.0

task BasenjiTestRepspy {
  command <<<
    basenji_test_reps_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}