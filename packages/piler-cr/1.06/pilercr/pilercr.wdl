version 1.0

task Pilercr {
  command <<<
    pilercr
  >>>
  runtime {
    docker: "quay.io/biocontainers/piler-cr:1.06--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}