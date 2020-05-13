version 1.0

task Mwfilter {
  input {
    Boolean toleranceTolerance
  }
  command <<<
    mwfilter \
      ~{true="-tolerance" false="" toleranceTolerance}
  >>>
}