version 1.0

task BioxInspect {
  input {
    Boolean? json
    Boolean? show_only_errors
    String help
  }
  command <<<
    biox inspect \
      ~{help} \
      ~{true="--json" false="" json} \
      ~{true="--show_only_errors" false="" show_only_errors}
  >>>
  parameter_meta {
    json: "[Flag]"
    show_only_errors: "[Flag]"
    help: "Prints this usage information"
  }
}