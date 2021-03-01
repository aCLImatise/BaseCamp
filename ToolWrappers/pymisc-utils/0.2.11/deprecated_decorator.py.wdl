version 1.0

task DeprecatedDecoratorpy {
  command <<<
    deprecated_decorator_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}