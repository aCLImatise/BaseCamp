version 1.0

task DeprecatedDecoratorpy {
  command <<<
    deprecated_decorator_py
  >>>
  output {
    File out_stdout = stdout()
  }
}