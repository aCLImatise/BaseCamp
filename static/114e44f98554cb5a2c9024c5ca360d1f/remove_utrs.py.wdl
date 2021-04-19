version 1.0

task RemoveUtrspy {
  command <<<
    remove_utrs_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
  }
  output {
    File out_stdout = stdout()
  }
}