version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/xmatchview:1.2.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}