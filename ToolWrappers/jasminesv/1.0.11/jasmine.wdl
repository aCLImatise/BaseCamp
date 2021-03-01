version 1.0

task Jasmine {
  command <<<
    jasmine
  >>>
  runtime {
    docker: "quay.io/biocontainers/jasminesv:1.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}