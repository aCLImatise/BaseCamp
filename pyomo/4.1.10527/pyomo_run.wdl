version 1.0

task PyomoRun {
  input {
    Boolean listList
    String? commandCommand
  }
  command <<<
    pyomo run \
      ~{commandCommand} \
      ~{true="--list" false="" listList}
  >>>
}