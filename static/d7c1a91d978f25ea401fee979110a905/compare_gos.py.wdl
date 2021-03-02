version 1.0

task CompareGospy {
  command <<<
    compare_gos_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}