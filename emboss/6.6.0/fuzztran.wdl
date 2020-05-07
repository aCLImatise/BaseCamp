version 1.0

task Fuzztran {
  input {
    Boolean patternPattern
  }
  command <<<
    fuzztran \
      ~{true="-pattern" false="" patternPattern}
  >>>
}