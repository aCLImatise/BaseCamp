version 1.0

task TAPIRpy {
  command <<<
    TAPIR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}