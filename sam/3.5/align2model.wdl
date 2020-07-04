version 1.0

task Align2model {
  input {
    String? option
    String run_name
  }
  command <<<
    align2model \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}