version 1.0

task Oe2fps {
  command <<<
    oe2fps
  >>>
  runtime {
    docker: "quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0"
  }
  output {
    File out_stdout = stdout()
  }
}