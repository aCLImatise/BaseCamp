version 1.0

task Abeona {
  input {
    String? argsArgs
  }
  command <<<
    abeona \
      ~{argsArgs}
  >>>
}