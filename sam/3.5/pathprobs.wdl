version 1.0

task Pathprobs {
  input {
    String? option
    String run_name
  }
  command <<<
    pathprobs \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}