version 1.0

task Gmx {
  input {
    String commands
    String selections
  }
  command <<<
    gmx \
      ~{commands} \
      ~{selections}
  >>>
  parameter_meta {
    commands: "List of available commands"
    selections: "Selection syntax and usage"
  }
}