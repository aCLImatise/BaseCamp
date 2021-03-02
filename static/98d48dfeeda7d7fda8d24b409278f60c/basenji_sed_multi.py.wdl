version 1.0

task BasenjiSedMultipy {
  command <<<
    basenji_sed_multi_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}