version 1.0

task Ecofind {
  input {
    String? patternsPatterns
  }
  command <<<
    ecofind \
      ~{patternsPatterns}
  >>>
}