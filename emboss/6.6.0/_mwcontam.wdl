version 1.0

task _mwcontam {
  input {
    Boolean toleranceTolerance
  }
  command <<<
    _mwcontam \
      ~{true="-tolerance" false="" toleranceTolerance}
  >>>
}