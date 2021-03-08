version 1.0

task Gcta64 {
  command <<<
    gcta64
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcta:1.93.2beta--0"
  }
  output {
    File out_stdout = stdout()
  }
}