version 1.0

task Blacksheep {
  command <<<
    blacksheep
  >>>
  runtime {
    docker: "quay.io/biocontainers/blksheep:0.0.7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}