version 1.0

task Tidygff3 {
  command <<<
    tidygff3
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  output {
    File out_stdout = stdout()
  }
}