version 1.0

task TimeoutDecoratorpy {
  command <<<
    timeout_decorator_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rodeo:2.3.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}