version 1.0

task Buildmodel {
  input {
    String? option
    String run_name
  }
  command <<<
    buildmodel \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}