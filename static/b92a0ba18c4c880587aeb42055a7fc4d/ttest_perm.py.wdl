version 1.0

task TtestPermpy {
  command <<<
    ttest_perm_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}