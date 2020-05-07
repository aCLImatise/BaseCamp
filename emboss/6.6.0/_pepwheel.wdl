version 1.0

task _pepwheel {
  input {
    Boolean stepsSteps
    Boolean turnsTurns
  }
  command <<<
    _pepwheel \
      ~{true="-steps" false="" stepsSteps} \
      ~{true="-turns" false="" turnsTurns}
  >>>
}