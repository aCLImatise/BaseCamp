version 1.0

task Cortexpy {
  input {
    String? argsArgs
  }
  command <<<
    cortexpy \
      ~{argsArgs}
  >>>
}