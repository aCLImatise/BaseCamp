version 1.0

task _fuzztran {
  input {
    Boolean patternPattern
  }
  command <<<
    _fuzztran \
      ~{true="-pattern" false="" patternPattern}
  >>>
}