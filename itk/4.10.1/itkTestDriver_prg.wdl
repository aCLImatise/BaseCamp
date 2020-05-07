version 1.0

task ItkTestDriverPrg {
  input {
    String? argsArgs
  }
  command <<<
    itkTestDriver prg \
      ~{argsArgs}
  >>>
}