version 1.0

task _mwfilter {
  input {
    Boolean toleranceTolerance
  }
  command <<<
    _mwfilter \
      ~{true="-tolerance" false="" toleranceTolerance}
  >>>
}