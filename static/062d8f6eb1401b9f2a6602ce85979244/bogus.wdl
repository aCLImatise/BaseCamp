version 1.0

task Bogus {
  command <<<
    bogus
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  output {
    File out_stdout = stdout()
  }
}