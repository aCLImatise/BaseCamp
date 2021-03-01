version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/seurat-scripts:0.0.9--0"
  }
  output {
    File out_stdout = stdout()
  }
}