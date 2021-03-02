version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/scmap-cli:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}