version 1.0

task Mwcontam {
  input {
    Boolean toleranceTolerance
  }
  command <<<
    mwcontam \
      ~{true="-tolerance" false="" toleranceTolerance}
  >>>
}