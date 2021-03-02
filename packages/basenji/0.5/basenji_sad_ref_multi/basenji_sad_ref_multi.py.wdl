version 1.0

task BasenjiSadRefMultipy {
  command <<<
    basenji_sad_ref_multi_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}