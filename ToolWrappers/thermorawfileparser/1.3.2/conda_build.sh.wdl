version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}