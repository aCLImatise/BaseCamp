version 1.0

task Pepwheel {
  input {
    Boolean stepsSteps
    Boolean turnsTurns
  }
  command <<<
    pepwheel \
      ~{true="-steps" false="" stepsSteps} \
      ~{true="-turns" false="" turnsTurns}
  >>>
}