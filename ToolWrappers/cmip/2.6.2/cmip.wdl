version 1.0

task Cmip {
  command <<<
    cmip
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmip:2.6.2--hc99cbb1_0"
  }
  output {
    File out_stdout = stdout()
  }
}