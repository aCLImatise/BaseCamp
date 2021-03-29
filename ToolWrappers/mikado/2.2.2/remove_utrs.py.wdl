version 1.0

task RemoveUtrspy {
  command <<<
    remove_utrs_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.2--py37hfa133b6_0"
  }
  output {
    File out_stdout = stdout()
  }
}