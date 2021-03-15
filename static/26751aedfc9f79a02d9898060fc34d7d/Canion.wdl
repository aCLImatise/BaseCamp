version 1.0

task Canion {
  command <<<
    Canion
  >>>
  runtime {
    docker: "quay.io/biocontainers/curves:3.0.0--hc99cbb1_0"
  }
  output {
    File out_stdout = stdout()
  }
}