version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}