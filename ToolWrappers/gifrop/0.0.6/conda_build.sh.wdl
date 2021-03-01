version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}