version 1.0

task Model2model {
  input {
    String? option
    String run_name
  }
  command <<<
    model2model \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}