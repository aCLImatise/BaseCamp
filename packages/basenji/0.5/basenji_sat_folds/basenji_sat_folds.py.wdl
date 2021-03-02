version 1.0

task BasenjiSatFoldspy {
  command <<<
    basenji_sat_folds_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}