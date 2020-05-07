version 1.0

task RandfoldMethodFile name {
  input {
    String? numberNumberOfRandomizationS
  }
  command <<<
    randfold method file name \
      ~{numberNumberOfRandomizationS}
  >>>
}