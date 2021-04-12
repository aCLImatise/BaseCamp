version 1.0

task CoordinateBatchsh {
  command <<<
    coordinate_batch_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0"
  }
  output {
    File out_stdout = stdout()
  }
}