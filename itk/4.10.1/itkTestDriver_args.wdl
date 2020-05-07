version 1.0

task ItkTestDriverArgs {
  input {
    String? prgPrg
    String? argsArgs
  }
  command <<<
    itkTestDriver args \
      ~{prgPrg} \
      ~{argsArgs}
  >>>
}