version 1.0

task Checkmodel {
  input {
    String? option
    String run_name
  }
  command <<<
    checkmodel \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}