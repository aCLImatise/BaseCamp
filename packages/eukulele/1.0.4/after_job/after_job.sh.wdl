version 1.0

task AfterJobsh {
  command <<<
    after_job_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0"
  }
  output {
    File out_stdout = stdout()
  }
}