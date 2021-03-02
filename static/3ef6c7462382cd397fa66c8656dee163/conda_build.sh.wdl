version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}