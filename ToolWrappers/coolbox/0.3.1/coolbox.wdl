version 1.0

task Coolbox {
  command <<<
    coolbox
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}