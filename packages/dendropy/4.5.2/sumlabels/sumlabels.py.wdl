version 1.0

task Sumlabelspy {
  command <<<
    sumlabels_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}